// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract EvalToken42 is ERC20, Ownable {
    uint256 public constant WELCOME_TOKEN = 42 * 10 ** 18; //42Tokens as welcome tokens
    uint256 public constant REQUEST_FEE = 1 * 10 ** 18;
    mapping(address => bool) public hasJoined; //mapping to track users recieved the welcome tokens

    enum EvaluationStatus {
        Pending,
        Ongoing,
        Completed,
        Canceled
    }

    struct EvaluationRequest {
        uint256 evalId;
        address evaluatee;
        address evaluator;
        EvaluationStatus evalStatus;
        bool isEvaluateeApproved;
        bool isEvaluatorApproved;
    }

    mapping(uint256 => EvaluationRequest) public evaluationPool;
    uint256 public front;
    uint256 public rear;
    uint256 public pendingSize;

    constructor(address initialOwner)
        ERC20("EvalToken42", "ET42")
        Ownable(initialOwner)
    {
        _mint(msg.sender, WELCOME_TOKEN);
    }

    event EvaluationRequested(uint256 indexed evalId, address indexed evaluatee);
    event EvaluationAccepted(uint256 indexed evalId, address indexed evaluator);
    event EvaluationCompleted(uint256 indexed evalId);

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount * 10 ** decimals());
    }

    //Users to receive welcome tokens
    function welcome() public {
        require(!hasJoined[msg.sender], "Already received 42 Tokens");

        hasJoined[msg.sender] = true;
        _mint(msg.sender, WELCOME_TOKEN);
    }

    // Evaluatees to request evaluations
    function requestEvaluation() public {
        require(balanceOf(msg.sender) >= 1 * 10 ** 18, "Not enough token to request eval");

        _transfer(msg.sender, address(this), REQUEST_FEE); //pay the eval fee to the contract

        evaluationPool[rear] = EvaluationRequest(
            rear,
            msg.sender,
            address(0),
            EvaluationStatus.Pending,
            false,
            false
        ); //enqueue to the eval pool

        emit EvaluationRequested(rear, msg.sender);
        rear++;
        pendingSize++;
    }

    //Evaluators to accept evaluations
    function acceptEvaluation() public {
        require(pendingSize > 0, "No pending evalution requests");
        require(evaluationPool[front].evaluatee != msg.sender, "Not able to evaluate yourself");

        evaluationPool[front].evaluator = msg.sender;
        evaluationPool[front].evalStatus = EvaluationStatus.Ongoing; //check that is done
        pendingSize--;

        emit EvaluationAccepted(evaluationPool[front].evalId, msg.sender);
    }

    //Evaluations to be completed with mutual approval
    function completeEvalution(uint256 evalId) public {
        require(evalId >= front && evalId < rear, "Invalid Evalution ID");
        require(evaluationPool[evalId].evalStatus == EvaluationStatus.Ongoing, "Not able to complete this evaluation");

        EvaluationRequest storage request = evaluationPool[evalId];

        if (request.evaluatee == msg.sender) {
            request.isEvaluateeApproved = true;
        } else if (request.evaluator == msg.sender) {
            request.isEvaluatorApproved = true;
        } else {
            revert("Unknown User");
        }

        if (request.isEvaluateeApproved && request.isEvaluatorApproved) {
            request.evalStatus = EvaluationStatus.Completed;
            _transfer(address(this), request.evaluator, REQUEST_FEE); //contract pays the reward to the evaluator
            if (front == evalId) {
                front++;
            }
            emit EvaluationCompleted(evalId);
        }
    }

    //Users to retrieve ongoing evaluations
    function getOngoingEvaluations() public view returns (EvaluationRequest[] memory) {
        uint256 count;

        for (uint256 i = front; i < rear; i++) {
            if (evaluationPool[i].evalStatus == EvaluationStatus.Ongoing &&
                (evaluationPool[i].evaluatee == msg.sender || evaluationPool[i].evaluator == msg.sender)) {
                count++;
            }
        }

        EvaluationRequest[] memory ongoingEvalutions = new EvaluationRequest[](count);
        uint256 index = 0;

        for (uint256 i = front; i < rear; i++) {
            if (evaluationPool[i].evalStatus == EvaluationStatus.Ongoing &&
                (evaluationPool[i].evaluatee == msg.sender || evaluationPool[i].evaluator == msg.sender)) {
                ongoingEvalutions[index] = evaluationPool[i];
                index++;
            }
        }

        return ongoingEvalutions;
    }

    function getPendingSize() public view returns (uint256) {
        return pendingSize;
    }
}
