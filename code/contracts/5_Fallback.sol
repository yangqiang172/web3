// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Callee {
    event FunctionCalled(string);

    function foo() external payable {
        emit FunctionCalled("this is foo");
    }

    // receive() external payable { 
    //     emit FunctionCalled("this is receive");
    // }

    // fallback() external payable { 
    //     emit FunctionCalled("this is fallback");
    // }
}

contract Caller {
    address payable callee;

    constructor() payable {
        callee = payable (address(new Callee()));
    }

    //触发receive函数
    function transferReceive() external {
        callee.transfer(1);
    }

    //触发receive函数
    function sendReceive() external {
        bool success = callee.send(1);
        require(success,"Fail to send Ether");
    }

    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }

    function callReceive() external {
        (bool success,bytes memory data) = callee.call{value:1}("");
        require(success,"Fail to call receive");
    }

    function callFoo() external {
        (bool success,bytes memory data) = callee.call{value:1}(abi.encodeWithSignature("foo()"));
        require(success,"Fail to call foo");
    }


    function callFallBack() external {
        (bool success,bytes memory data) = callee.call{value:1}(
            abi.encodeWithSignature("funcNotExist()")
        );
        require(success,"Failed to call fallback!");
    }

    

}