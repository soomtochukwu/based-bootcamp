// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructExample {
    // Struct to represent a student
    struct Student {
        string name;
        uint256 age;
        bool enrolled;
    }

    Student public student;

    function setStudent(
        string memory _name,
        uint256 _age,
        bool _enrolled
    ) public {
        student = Student(_name, _age, _enrolled);
    }
}
