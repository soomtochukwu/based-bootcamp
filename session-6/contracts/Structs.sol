// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract demonstrating structs
contract StructDemo {
    // Struct: Groups related data
    struct User {
        string name;
        uint256 balance;
        bool isActive;
    }

    // Mapping of addresses to User structs
    mapping(address => User) public users;

    // Function to create or update a user
    function setUser(string memory _name, uint256 _balance) public {
        users[msg.sender] = User({
            name: _name,
            balance: _balance,
            isActive: true
        });
    }

    // Function to deactivate a user
    function deactivateUser() public {
        users[msg.sender].isActive = false;
    }
}

/* 
Structs Explained:
- Structs group related data into a single unit (e.g., User)
- Can be used in mappings or arrays
- setUser creates/updates a User struct for an address
*/
