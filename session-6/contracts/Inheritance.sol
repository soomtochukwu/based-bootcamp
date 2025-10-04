// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Base contract
contract Animal {
    string public species;

    function setSpecies(string memory _species) public {
        species = _species;
    }
}

// Derived contract inheriting from Animal
contract Dog is Animal {
    function bark() public pure returns (string memory) {
        return "Woof!";
    }
}
