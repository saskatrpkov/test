// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Base{

    function hello()public pure returns (string memory){
        return "Hello";
    }
}

contract Derived is Base{
    function hello2(string memory name) public pure returns(string memory){
        return string(abi.encodePacked(super.hello(), " ", name));
    }
}