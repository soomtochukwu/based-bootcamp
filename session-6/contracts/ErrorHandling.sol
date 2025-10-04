// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ErrorHandling {
    uint256 public balance;

    function deposit(uint256 amount) public {
        require(amount > 0, "Deposit must be greater than zero");
        balance += amount;
    }

    function withdraw(uint256 amount) public {
        if (amount > balance) {
            revert("Not enough balance");
        }
        balance -= amount;
    }

    function testAssert() public view {
        // This should always be true
        assert(balance >= 0);
    }
}
