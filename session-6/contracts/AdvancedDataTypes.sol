// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract demonstrating advanced data types
contract AdvancedDataTypes {
    // String: Variable-length UTF-8 encoded string
    string public message;

    // Bytes: Dynamic byte array
    bytes public data;

    // Fixed-size byte array (32 bytes)
    bytes32 public fixedData;

    // Constructor to initialize data
    constructor() {
        message = "Hello, Solidity!";
        data = hex"123456";
        fixedData = keccak256(abi.encodePacked("fixed"));
    }

    // Function to update string
    function setMessage(string memory _message) public {
        message = _message;
    }

    // Function to update bytes
    function setData(bytes memory _data) public {
        data = _data;
    }

    // Function to update fixed-size bytes
    function setFixedData(bytes32 _fixedData) public {
        fixedData = _fixedData;
    }
}

/* 
Advanced Data Types Explained:
- String: Used for text data (e.g., "Hello, Solidity!")
- Bytes: Dynamic array for raw byte data
- Bytes32: Fixed-size 32-byte array, useful for hashes or identifiers
*/
