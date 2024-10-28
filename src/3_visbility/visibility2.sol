// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract2 {
    //TODO: Fix the visibility of the function to enable function call in `Visibility2`
    function addOne(uint256 x) internal pure returns (uint256) {
        return x + 1;
    }
}

contract Visibility2 {
    Contract2 private contract2;
    function callAddOne(uint256 x) external view returns (uint256) {
        return contract2.addOne(x);
    }
}
