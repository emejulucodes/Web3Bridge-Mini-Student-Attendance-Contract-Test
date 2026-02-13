// // SPDX-License-Identifier: UNLICENSED
// pragma solidity ^0.8.13;

// import {Test} from "forge-std/Test.sol";
// import {Attendance} from "../src/Attendance.sol";

// contract AttendanceTest is Test {
//     Attendance public attendance;

//     function setUp() public {
//         attendance = new Attendance();
//         attendance.setNumber(0);
//     }

//     function test_Increment() public {
//         attendance.increment();
//         assertEq(attendance.number(), 1);
//     }

//     function testFuzz_SetNumber(uint256 x) public {
//         attendance.setNumber(x);
//         assertEq(attendance.number(), x);
//     }
// }
