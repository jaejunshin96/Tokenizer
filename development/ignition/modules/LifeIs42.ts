import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("LifeIs42", (m) => {
  const lifeIs42 = m.contract("LifeIs42");

  return { lifeIs42 };
});
