// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ModifierDemo {

    address private owner;

    constructor() {
        //msg.sender是solidity种的全局变量，代表调用者的外部地址，由于构造函数只会在合同部署时执行一次，所以这里将部署者的地址设置为owner
        owner = msg.sender; 
    }

    modifier onlyOwner() {
        require(msg.sender == owner,"only the owner can call the function.");
        _; //占位符代表函数主体执行的位置
    }

    
    function changeOwner() external onlyOwner {
        //函数主体
    }


}