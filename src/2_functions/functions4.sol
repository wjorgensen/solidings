// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Functions4 {
    uint256 private  _x = 10;
    //TODO: Fix the keyword dictating function behaviors
    function x() external returns(uint256){
        return _x;
    }

    //TODO: Fix the keyword dictating function behaviors
    function returnA() external returns(uint256) {
        return 101;
    }

    //TODO: Fix the keyword dictating function behaviors
    function transferTo(address payable _to) external {
        _to.transfer(msg.value);
    }
}