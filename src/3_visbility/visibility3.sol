// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract3 {
    //TODO: Fix the visibility of the function to enable function call in both `addTwo` and `callAddOne`
    function addOne(uint256 x) external pure returns (uint256) {
        return x + 1;
    }

    function addTwo(uint256 x) external pure returns (uint256) {
        return addOne(addOne(x));
    }
}

contract Visibility3 {
    Contract3 private contract3;
    function callAddOne(uint256 x) external view returns (uint256) {
        return contract3.addOne(x);
    }
}
