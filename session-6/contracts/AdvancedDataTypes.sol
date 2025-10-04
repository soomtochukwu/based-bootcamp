// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AdvancedDataTypes {
    // Dynamic array
    uint256[] public numbers;

    // Fixed-size array
    uint256[3] public fixedNumbers = [1, 2, 3];

    // Bytes (used for raw data)
    bytes public data = "Hello";

    // Ethereum address
    address public myAddress = msg.sender;

    function addNumber(uint256 num) public {
        numbers.push(num);
    }
}
