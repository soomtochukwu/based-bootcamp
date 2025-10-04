// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MappingsExample {
    // Mapping from address to balance
    mapping(address => uint256) public balances;

    function deposit(uint256 amount) public {
        balances[msg.sender] += amount;
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
