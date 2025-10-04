// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract demonstrating security best practices
contract SecurityDemo {
    // State variables
    address public owner;
    mapping(address => uint256) public balances;

    // Constructor sets the deployer as owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call");
        _;
    }

    // Function to deposit Ether
    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    // Function to withdraw balance with security practices
    function withdraw() public {
        // Check: Ensure sufficient balance
        uint256 amount = balances[msg.sender];
        require(amount > 0, "No balance to withdraw");

        // Effect: Update state before external call
        balances[msg.sender] = 0;

        // Interaction: Safe Ether transfer
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");
    }

    // Function to pause contract
    function pause() public onlyOwner {
        // Emits event for transparency
        emit Paused(msg.sender);
    }

    // Event for logging
    event Paused(address owner);
}

/* 
Security Best Practices Explained:
1. Checks-Effects-Interactions: Update state (balances) before external calls
2. Input validation: Require checks for valid conditions
3. Safe Ether transfer: Use call with success check
4. Access control: onlyOwner modifier restricts sensitive functions
5. Event emission: Log actions for transparency
6. Avoid reentrancy: State updated before transfer
*/
