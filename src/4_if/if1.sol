// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract If1 {
    function bigger(uint256 a, uint256 b) external pure returns (uint256) {
        // TODO: Complete this function to return the bigger number!
        // If both numbers are equal, any of them can be returned.
        // Do not use:
        // - another function call
        // - additional variables
    }
}

contract If1Test is Test {
    If1 _if1;
    function setup() public {
        _if1 = new If1();
    }
    function test_bigger1() public view {
        uint256 res = _if1.bigger(10, 3);
        vm.assertEq(res, 10);
    }

    function test_bigger2() public view {
        uint256 res = _if1.bigger(1, 1);
        vm.assertEq(res, 1);
    }

    function test_bigger3() public view {
        uint256 res = _if1.bigger(1, 1500);
        vm.assertEq(res, 1500);
    }
}
