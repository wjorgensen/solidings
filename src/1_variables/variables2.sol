// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {console2} from "forge-std/console2.sol";

contract Variables2 {
    
    //TODO: Complete the code
    uint256 public x = 10;

    function test() public {
        
        if( x == 10 ){
            console2.log("X is 10");
        } else {
            console2.log("Try again!");
        }
    }

}