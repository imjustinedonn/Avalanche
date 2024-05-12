// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract views {
    uint x = 5;
    function getx() public view returns(uint) {
        return x + 10;
    }
    function pures(uint z, uint y) public pure returns(uint) {
        return z + y;
    }
}
contract payableContract {

    address payable private owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit () external payable {}

    function getBalance () external view returns (uint) {
        return address(this).balance;
    }
    

}
contract drive is views, payableContract {

}
