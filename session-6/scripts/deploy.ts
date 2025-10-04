const hre = require("hardhat");
const { verify } = require("../utils/verify.js");
require("dotenv").config();
async function main() {
  //   const [deployer, buyer] = await hre.ethers.getSigners();

  // Deploy AdvancedDataTypes
  const AdvancedDataTypes = await hre.ethers.deployContract(
    "AdvancedDataTypes",
    []
  );
  await AdvancedDataTypes.waitForDeployment();
  console.log("AdvancedDataTypes " + AdvancedDataTypes.target);
  console.log("");

  // Verify contracts (optional, only if you have an etherscan key and on testnet/mainnet)

  if (hre.network.name !== "hardhat" && hre.network.name !== "localhost") {
    console.log("Verifying contracts...");
    await verify(
      AdvancedDataTypes.target,
      [],
      "contracts/AdvancedDataTypes.sol:AdvancedDataTypes"
    );
  } else {
    console.log("Skipping verification on local network");
  }
  console.log("");
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
