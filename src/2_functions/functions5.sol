// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Functions5 {
    function addOne(uint256 x) public pure returns(uint256) {
        return x+1;
    }

    //TODO: Fix the function call
    function function2() external pure returns(uint256) {
        return this.addOne();
    }
}