// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Functions2 {
    uint256 private _x = 1;
    //TODO: Fix returning type of the function
    function function1() external {
        _x = 101;
        return _x;
    }

    //TODO: Fix returning type of the function and returning line in the function body
    function function2() external return(uint256){
        _x = 101;
        returns _x;
    }
}