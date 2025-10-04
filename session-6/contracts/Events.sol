// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EventsExample {
    event Deposited(address indexed user, uint256 amount);

    function deposit(uint256 amount) public {
        emit Deposited(msg.sender, amount);
    }
}
