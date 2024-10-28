// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract1 {
    //TODO: Fix the visibility of the function to enable function call in `Visibility1`
    function addOne(uint256 x) private pure returns (uint256) {
        return x + 1;
    }
}

contract Visibility1 is Contract1 {
    function callAddOne(uint256 x) external pure returns (uint256) {
        return addOne(x);
    }
}
