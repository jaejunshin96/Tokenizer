// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract LifeIs42 is ERC20, ERC20Permit {
    constructor() ERC20("LifeIs42", "LIFT") ERC20Permit("LifeIs42") {
        _mint(msg.sender, 100000 * 10 ** decimals());
    }
}
