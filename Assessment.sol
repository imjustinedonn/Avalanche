// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Angsantos {
    uint200 public currentNumber;

    event NumberUpdated(uint200 newNumber);

    function showNumber(uint200 putNumber) external {
        
        if (putNumber <= 30) {
            revert("Input must be greater than 30");
        }

        require(putNumber != 50, "Invalid input!");

        currentNumber = putNumber;

        assert(currentNumber == putNumber);

        emit NumberUpdated(putNumber);
    }

    function getCurrentNumber() external view returns (uint200) {
        return currentNumber;
    }
}
