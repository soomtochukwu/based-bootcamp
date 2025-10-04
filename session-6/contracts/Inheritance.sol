// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Base contract for inheritance
contract Ownable {
    // State variable to store the contract owner
    address public owner;

    // Constructor sets the deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict function access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
}

// Contract demonstrating inheritance
contract MyContract is Ownable {
    // State variable for demonstration
    string public name;

    // Constructor to initialize the contract
    constructor(string memory _name) {
        name = _name;
    }

    // Function only the owner can call, demonstrating inherited modifier
    function setName(string memory _newName) public onlyOwner {
        name = _newName;
    }
}

/* 
Inheritance Explained:
- Ownable is the parent contract with an owner variable and onlyOwner modifier
- MyContract inherits from Ownable, gaining access to its variables and modifiers
- setName uses the inherited onlyOwner modifier to restrict access
*/
