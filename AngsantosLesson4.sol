// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract GlobalFunction {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function Sender() public view returns (address) {
        return msg.sender;
    }

    function CurrentTime() public view returns (uint256) {
        return block.timestamp;
    }

    function ContractBal() public view returns (uint256) {
        return address(this).balance;
    }

    function AssignOwnership(address _newOwner) public {
        require(msg.sender == owner, "Only the owner can assign ownership");
        owner = _newOwner;
    }
}
