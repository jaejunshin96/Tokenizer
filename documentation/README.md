# **EvalToken42 (ET42) – Decentralized Peer Evaluation**

**EvalToken42 (ET42)** is an **ERC-20 token** designed for **peer evaluations** in education.  
Students can request evaluations, and evaluators earn **1ET** for completing them.  

---

## 🚀 **How It Works**  
1️⃣ **Join** – New users call `welcome()` to get **42ET** (one-time).  
2️⃣ **Request Evaluation** – Call `requestEvaluation()` (costs **1ET**).  
3️⃣ **Accept Evaluation** – Evaluators pick a request with `acceptEvaluation(evalId)`.  
4️⃣ **Complete Evaluation** – Both parties confirm via `completeEvaluation(evalId)`, and the evaluator **earns 1ET**.  

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
1. **Deploy** the contract on Sepolia Testnet.  
2. **Claim 42ET** using `welcome()`.  
3. **Start requesting & completing evaluations**.  

---

## 🔥 **Why Use ET42?**  
✔ **Fair Peer Reviews** – FIFO system prevents bias.  
✔ **Earn Rewards** – Evaluators get **1ET** per review.  
✔ **Transparent & Secure** – Blockchain ensures fairness.  

---
