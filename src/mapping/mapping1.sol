// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Mapping1 {
    mapping(uint => address) public idToAddress;

    function setAddress(uint _Key, address _Value) public {
        // TODO: assign new key-value pair to `idToaAddress` mapping
    }

    function getAddress(uint _key) public returns(address) {
        // TODO: get the value of `idToaAddress` mapping from _key in the input
        return
    }

    struct Student {
        uint256 id;
        uint256 score;
    }
    // TODO: fix the bug of the mapping below. The mapping should map address to Student
    mapping(Student => uint) public addressToStudent;
}
