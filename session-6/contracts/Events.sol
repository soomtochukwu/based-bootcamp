// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract demonstrating events
contract EventDemo {
    // Event: Logs when a value is updated
    event ValueUpdated(address indexed user, uint256 newValue);

    // State variable
    uint256 public value;

    // Function to update value and emit event
    function setValue(uint256 _value) public {
        value = _value;
        // Emit event with sender and new value
        emit ValueUpdated(msg.sender, _value);
    }
}

/* 
Events Explained:
- Events allow logging of data to the blockchain for external monitoring
- ValueUpdated logs the user and new value
- Indexed parameters (e.g., user) enable filtering in event logs
*/
