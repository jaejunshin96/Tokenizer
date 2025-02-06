# **EvalToken42: Decentralized Peer Evaluation System**

## **Overview**
EvalToken42 (`ET42`) is an ERC-20 token designed for **peer evaluations in educational environments**.
- **Evaluatees** request evaluations by paying **1ET**.
- **Evaluators** complete reviews and earn **1ET** as a reward.
- A **FIFO queue** manages pending evaluations to ensure fairness.

---

## **How It Works**
1️⃣ **New Users Join** – Call `welcome()` to receive **42ET** (one-time).
2️⃣ **Request an Evaluation** – Call `requestEvaluation()` and pay **1ET**.
3️⃣ **Accept an Evaluation** – Evaluators pick a request using `acceptEvaluation(evalId)`.
4️⃣ **Complete the Evaluation** – Both parties confirm via `completeEvaluation(evalId)`, and the evaluator **receives 1ET**.

---

## **Smart Contract Functions**
| **Function** | **Description** |
|-------------|---------------|
| `welcome()` | Claim **42ET** as a new user. |
| `requestEvaluation()` | Pay **1ET** to request an evaluation. |
| `acceptEvaluation(evalId)` | Evaluator accepts a request. |
| `completeEvaluation(evalId)` | Both parties confirm completion, and **1ET is rewarded**. |
| `getOngoingEvaluations()` | View ongoing evaluations. |

---

## **Requirements to Use ET42**
✅ **Metamask Wallet** – To send and receive tokens.
✅ **42ET Tokens** – Earned via `welcome()` or bought from an exchange (if listed).
✅ **Sepolia Testnet ETH** – Needed for transaction fees.

---

## Getting Started

1️⃣ Deploy the contract on Sepolia Testnet.
2️⃣ Claim your 42ET tokens with welcome().
3️⃣ Start requesting and completing evaluations.

---

## Why Use 42EvalToken?

✔ Fair Peer Evaluations – Ensures students get reviewed fairly.
✔ Evaluator Rewards – Incentivizes participation with token rewards.
✔ Secure & Transparent – Blockchain prevents manipulation.
