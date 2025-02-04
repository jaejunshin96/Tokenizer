import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("42EvalToken", (m) => {
  const evalToken = m.contract("42EvalToken");

  return { evalToken };
});
