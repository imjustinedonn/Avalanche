// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Calculation {
    event AdditionEvent(uint indexed result, string message);
    event SubtractionEvent(uint indexed result,string message);
    event MultiplicationEvent(uint indexed result,string message);
    uint public result;

    constructor() {
        result = 0;
    }

    function addition(uint Number1, uint Number2) public {
        result = Number1 + Number2;
        emit AdditionEvent(result, "ADDED SUCCESSFULLY");
    }

    function subtract(uint Number1, uint Number2) public {
        result = Number1 - Number2;
        emit SubtractionEvent(result, "SUBTRACTION SUCCESSFULLY");
    }

    function multiply(uint Number1, uint Number2) public {
        result = Number1 * Number2;
        emit MultiplicationEvent(result, "MULTIPLICTION SUCCESSFULLY");
    }
}
