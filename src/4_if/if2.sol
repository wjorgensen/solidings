// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract If2 {
    // TODO: Fix the compiler error on this function.
    function fooIfFizz(
        string memory fizzish
    ) external pure returns (string memory) {
        if (
            keccak256(abi.encodePacked(fizzish)) ==
            keccak256(abi.encodePacked("fizz"))
        ) {
            return "foo";
        } else {
            return 1;
        }
    }
}

// TODO: Read the tests to understand the desired behavior.
// Make all tests pass without changing them.
contract TestIf2 is Test {
    If2 _if2;
    function setup() public {
        _if2 = new If2();
    }
    function test_fooForFizz() public view {
        vm.assertEq(_if2.fooIfFizz("fizz"), "foo");
    }

    function test_barForFuzz() public view {
        vm.assertEq(_if2.fooIfFizz("fuzz"), "bar");
    }

    function test_defaultForBaz() public view {
        vm.assertEq(_if2.fooIfFizz("literally anything"), "bar");
    }
}
