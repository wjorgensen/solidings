// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract AnimalHabitat {
    // TODO: Fix the compiler error in the statement below.
    function animalHabitat(string memory animal) public pure returns (string memory) {
        uint8 identifier;
        
        if (keccak256(abi.encodePacked(animal)) == keccak256(abi.encodePacked("crab"))) {
            identifier = 1;
        } else if (keccak256(abi.encodePacked(animal)) == keccak256(abi.encodePacked("gopher"))) {
            identifier = 2;
        } else if (keccak256(abi.encodePacked(animal)) == keccak256(abi.encodePacked("snake"))) {
            identifier = 3;
        } else {
            identifier = "Unkown";
        }

        // Return habitat based on the identifier
        if (identifier == 1) {
            return "Beach";
        } else if (identifier == 2) {
            return "Burrow";
        } else if (identifier == 3) {
            return "Desert";
        } else {
            return "Unknown";
        }
    }
}

// Don't change the tests!
contract AnimalHabitatTest is Test {
    AnimalHabitat animalHabitat;

    function setUp() public {
        animalHabitat = new AnimalHabitat();
    }

    function testGopherLivesInBurrow() public {
        string memory habitat = animalHabitat.animalHabitat("gopher");
        assertEq(habitat, "Burrow");
    }

    function testSnakeLivesInDesert() public {
        string memory habitat = animalHabitat.animalHabitat("snake");
        assertEq(habitat, "Desert");
    }

    function testCrabLivesOnBeach() public {
        string memory habitat = animalHabitat.animalHabitat("crab");
        assertEq(habitat, "Beach");
    }

    function testUnknownAnimal() public {
        string memory habitat = animalHabitat.animalHabitat("dinosaur");
        assertEq(habitat, "Unknown");
    }
}