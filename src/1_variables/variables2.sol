// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Variables2 {

    error xIsNotTen();
    
    //TODO: Complete the code
    uint256 public x = 10;

    function test() public {

        if( x == 10 ){
            return;
        } else {
            revert xIsNotTen();
        }
    }

}