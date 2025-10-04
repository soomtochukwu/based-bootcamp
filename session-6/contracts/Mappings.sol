// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract demonstrating mappings
contract MappingDemo {
    // Mapping: Associates addresses with uint balances
    mapping(address => uint256) public balances;

    // Nested mapping: Tracks allowances (address -> address -> amount)
    mapping(address => mapping(address => uint256)) public allowances;

    // Function to set balance for an address
    function setBalance(address _user, uint256 _amount) public {
        balances[_user] = _amount;
    }

    // Function to set allowance
    function setAllowance(address _spender, uint256 _amount) public {
        allowances[msg.sender][_spender] = _amount;
    }

    // Function to get balance
    function getBalance(address _user) public view returns (uint256) {
        return balances[_user];
    }
}

/* 
Mappings Explained:
- Mappings are key-value stores, like hash tables
- balances maps addresses to their uint256 balance
- Nested mappings (allowances) map an address to another mapping
*/
