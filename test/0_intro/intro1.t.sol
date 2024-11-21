// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {Intro1} from "../../src/0_intro/intro1.sol";

contract Intro1Test is Test {
    function setup() public {
        Intro1 intro;
    }

    function test() public {
        intro.test = 10;
    }
}