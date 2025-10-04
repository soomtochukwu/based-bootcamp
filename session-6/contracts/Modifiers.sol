// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract demonstrating modifiers
contract ModifierDemo {
    // State variables
    address public owner;
    bool public paused;

    // Constructor sets the deployer as the owner
    constructor() {
        owner = msg.sender;
        paused = false;
    }

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    // Modifier to ensure contract is not paused
    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    // Function using onlyOwner modifier
    function pauseContract() public onlyOwner {
        paused = true;
    }

    // Function using whenNotPaused modifier
    function doSomething() public whenNotPaused {
        // Logic for when contract is not paused
        // For demo, just updates a variable
        emit ActionPerformed(msg.sender);
    }

    // Event for demonstration
    event ActionPerformed(address user);
}

/* 
Modifiers Explained:
- Modifiers (onlyOwner, whenNotPaused) encapsulate reusable logic
- onlyOwner restricts access to the contract owner
- whenNotPaused ensures functions only execute when the contract is not paused
*/