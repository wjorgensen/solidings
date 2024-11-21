// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Constructor1 {
    address owner;

    //TODO: Set owner to the person who launched the contract

    //Dont change this function
    function test() public returns(bool) {
        if(owner = msg.sender){
            return true;
        } else {
            return false;
        }
    }
    

}