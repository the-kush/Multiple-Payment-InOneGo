// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Multisend} from "../src/Multisend.sol";

contract CounterTest is Test {
    Multisend public multisend;

    function setUp() public {
        multisend = new Multisend();
    }

    function test_send() public {
        
    }
}
