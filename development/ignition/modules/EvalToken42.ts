import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("EvalToken42", (m) => {
  const deployer = m.getAccount(0);

  const evalToken = m.contract("EvalToken42", [deployer]);

  return { evalToken };
});
