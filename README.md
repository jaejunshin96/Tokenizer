# **EvalToken42: Development Stack & Design Choices**

EvalToken42 (`ET42`) is a **decentralized peer evaluation system** on Sepolia testnet.
This README explains the **development stack** and **design choices** behind it.

---

## 🚀 **Tech Stack**

| **Technology**      | **Purpose** |
|---------------------|------------|
| **Hardhat**        | Smart contract development & testing. |
| **Solidity**       | Writing secure, optimized smart contracts. |
| **Etherscan**      | Verifying and interacting with deployed contracts. |
| **Sepolia Testnet** | Safe testing before mainnet deployment. |

---

## 🔹 **Why These Choices?**

### **🛠 Hardhat (Smart Contract Framework)**
✔ **Powerful Debugging** – Use `console.log()` inside Solidity.<br/>
✔ **Fast & Efficient** – Runs local Ethereum nodes for quick testing.<br/>
✔ **Seamless Integration** – Works well with `ethers.js`.<br/>
✔ **Plugins** – Supports gas reports, contract verification, and more.

### **🔐 Solidity (Smart Contract Language)**
✔ **Industry Standard** – Used across Ethereum & Layer-2 solutions.<br/>
✔ **Secure & Auditable** – Supports OpenZeppelin libraries for security.<br/>
✔ **Gas Optimization** – Helps reduce transaction costs.

### **🔍 Etherscan (Blockchain Explorer)**
✔ **Contract Verification** – Users can audit and interact with the contract.<br/>
✔ **Transaction Tracking** – Debug and verify contract execution.<br/>
✔ **No-Code Interaction** – Call contract functions without writing code.

### **🌐 Sepolia Testnet (Ethereum Test Network)**
✔ **Safe Testing** – No real ETH needed.<br/>
✔ **Fast Transactions** – Quick block confirmations for smoother testing.<br/>
✔ **Etherscan Support** – Verify and interact with contracts easily.

---

### **Address of deployed smart contract**
 - ET42 - **0xBD0e3f248aA7E9540b5b7118B4Fb4046092abf97**
