// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Struct1 {
    struct Student {
        uint256 id;
        uint256 score;
    }

    Student public student;

    function initStudent1() external {
        // TODO: Assign student with id of 11 and score of 100 by direct referral
        student.id;
        student;
    }

    function initStudent2() external {
        // TODO: Assign student with id of 12 and score of 90 by struct constructor
        student = Student();
    }

    function initStudent2() external {
        // TODO: Assign student with id of 13 and score of 80 by key value
        student = Student({id:, });
    }
}
