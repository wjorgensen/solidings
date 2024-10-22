// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract DefineFunc {

    //TODO: Fix this line
    function returnTen() returns(uint256) {
        return 10;
    } 
}

//Dont change this contract
contract Visibility2 {
    DefineFunc func;

    function test() public {
        if(func.returnTen() == 10){
            return;
        }
    }

}