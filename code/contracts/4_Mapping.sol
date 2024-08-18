
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping{

    //mapping中的key可以是任何《值类型》，value可以是任何类型
    //Solidity 仅允许映射类型声明在 storage
    mapping(address => int) map;
    function setMapping(address _addr, int _value) public {
        map[_addr] = _value;
    }




}