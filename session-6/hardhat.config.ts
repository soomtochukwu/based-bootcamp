import "@nomicfoundation/hardhat-toolbox";

require("dotenv").config();

const config = {
  solidity: "0.8.20",
  networks: {
    "base-sepolia": {
      url: "https://base-sepolia.g.alchemy.com/v2/9E2aTJwVzphtoZ59u4-dD7mKIA4-o__A",
      accounts: [process.env.PVK as string],
      gasPrice: 1000000000,
      blockConfirmations: 5,
      chainId: 84532,
    },
  },
  etherscan: {
    apiKey: process.env.base_API_Key as string,
    customChains: [
      {
        network: "base-sepolia",
        chainId: 84532,
        urls: {
          apiURL: "https://api.etherscan.io/v2/api",
          browserURL: "https://base-sepolia.blockscout.com",
        },
      },
    ],
  },
};

export default config;
