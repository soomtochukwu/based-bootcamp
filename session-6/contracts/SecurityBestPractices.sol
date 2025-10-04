// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SecurityBestPractices {
    address public owner;
    bool private locked; // Prevents reentrancy

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier noReentrancy() {
        require(!locked, "Reentrancy not allowed");
        locked = true;
        _;
        locked = false;
    }

    // Example: withdraw funds safely
    function withdraw(
        address payable to,
        uint256 amount
    ) public onlyOwner noReentrancy {
        require(address(this).balance >= amount, "Not enough balance");
        to.transfer(amount);
    }

    // Allow deposits
    receive() external payable {}
}
