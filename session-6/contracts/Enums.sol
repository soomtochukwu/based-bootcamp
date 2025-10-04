// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract demonstrating enums
contract EnumDemo {
    // Enum: Defines a set of possible states
    enum Status {
        Pending,
        Active,
        Inactive,
        Cancelled
    }

    // State variable using enum
    Status public currentStatus;

    // Constructor sets initial status
    constructor() {
        currentStatus = Status.Pending;
    }

    // Function to update status
    function setStatus(Status _status) public {
        currentStatus = _status;
    }

    // Function to check if status is Active
    function isActive() public view returns (bool) {
        return currentStatus == Status.Active;
    }
}

/* 
Enums Explained:
- Enums define a fixed set of named values (e.g., Status)
- Useful for representing contract states or modes
- currentStatus tracks the contract's state
*/
