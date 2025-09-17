// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract FundMe{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function fund() external payable{}

    function withdraw() public{
        require(msg.sender == owner, "Unauthorized Access");
        payable(owner).transfer(address(this).balance);
    }
}