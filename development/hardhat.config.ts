import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import * as dotenv from "dotenv";

const privateKey = process.env.PRIVATE_KEY || "";

const config: HardhatUserConfig = {
  solidity: "0.8.28",
//  defaultNetwork: "sepolia",
//  networks: {
//    hardhat: {
//    },
//    sepolia: {
//      url: "https://sepolia.infura.io/v3/<key>",
//      accounts: [privateKey]
//    }
//  }
};

export default config;
