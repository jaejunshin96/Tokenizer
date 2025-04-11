# **EvalToken42 (ET42) – Decentralized Peer Evaluation**

**EvalToken42 (ET42)** is an **ERC-20 token** designed for **peer evaluations** in education.
Students can request evaluations, and evaluators earn **1ET** for completing them.

---

## 🚀 **How It Works**
1️⃣ **Join** – New users call `welcome()` to get **42ET** (one-time).<br/>
2️⃣ **Request Evaluation** – Call `requestEvaluation()` (costs **1ET**).<br/>
3️⃣ **Accept Evaluation** – Evaluators pick a request with `acceptEvaluation(evalId)`.<br/>
4️⃣ **Complete Evaluation** – Both parties confirm via `completeEvaluation(evalId)`, and the evaluator **earns 1ET**.<br/>

🔄 A **FIFO queue** ensures fair request distribution.

---

## 🔧 **Smart Contract Functions**
| **Function** | **Purpose** |
|-------------|------------|
| `welcome()` | Claim **42ET** (one-time). |
| `requestEvaluation()` | Pay **1ET** to request an evaluation. |
| `acceptEvaluation(evalId)` | Accept an evaluation request. |
| `completeEvaluation(evalId)` | Confirm completion & reward **1ET**. |
| `getOngoingEvaluations()` | View pending evaluations. |

---

## ✅ **Requirements**
- **Metamask Wallet** – To manage ET42 tokens.
- **42ET Tokens** – Earned via `welcome()` or bought (if listed).
- **Sepolia Testnet ETH** – For gas fees.

---

## 🚀 **Getting Started**
1. Search for the contract by the address 0xBD0e3f248aA7E9540b5b7118B4Fb4046092abf97.
2. On contract tab, connect your wallet to the contract.
3. Use welcome() method to obtain the initial tokens.
4. requestEvaluation() - One can request an eval with one token.
5. acceptEvaluation() - The other one can accept it.
6. getOngoingEvaluation() - You can check the ongoing eval.
7. When both completeEvalution(), Evaluator gets one token as a reward.
8. Check the eval status with the eval id. evaluationPool().

---

## 💻 **How to deploy and verify**
1. npm install
2. npm run compile
3. npx hardhat vars set ALCHEMY_API_KEY
    npx hardhat vars set PRIVATE_KEY
    npx hardhat vars set BASESCAN_API_KEY
4. npx hardhat ignition deploy ./ignition/modules/EvalToken42.ts --network sepolia
5. npx hardhat verify --network sepolia "The deployed address"

---

## 🔥 **Why Use ET42?**
✔ **Fair Peer Reviews** – FIFO system prevents bias.<br/>
✔ **Earn Rewards** – Evaluators get **1ET** per review.<br/>
✔ **Transparent & Secure** – Blockchain ensures fairness.

---
