// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract DefineVars {
    
    //TODO: Change this line
    uint256 private x = 10;

}

//Dont change anything in this contract
contract Visibility1 {
    DefineVars vars;

    function add() public returns(uint256) {
        return vars.x() + vars.x();
    }
}
