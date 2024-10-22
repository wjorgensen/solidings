// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Functions3 {
    uint256 private  _x = 10;

    //TODO: Fix the function input
    function function1() external returns(uint256) {
        return y;
    }

    //TODO: Fix the function input type
    function convertPrice(amount, price) external returns(uint256){
        return amount * price;
    }

    //TODO: Fix the function input type
    function payTo(_to, uint256 amount) external payable {
        _to.transfer(amount);
    }

}