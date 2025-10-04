// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ModifiersExample {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Modifier: Restricts function access to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner!");
        _;
    }

    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}
