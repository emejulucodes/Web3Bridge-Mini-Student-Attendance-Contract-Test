// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Attendance {
	struct Student {
		string name;
		uint256 age;
		bool present;
	}

	Student[] public students;

	event StudentAdded(uint256 indexed studentId, string name, uint256 age);
	event AttendanceUpdated(uint256 indexed studentId, bool present);

	function addStudent(string memory name, uint256 age) external {
		students.push(Student({name: name, age: age, present: false}));
		emit StudentAdded(students.length - 1, name, age);
	}

	function updateAttendance(uint256 studentId, bool present) external {
		require(studentId < students.length, "Student does not exist");
		students[studentId].present = present;
		emit AttendanceUpdated(studentId, present);
	}
}
