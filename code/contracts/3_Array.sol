
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array{


    function test() public pure returns(bytes1) {
        bytes3 b = 'abc';
        return b[1];
    }

    /*在计算b时会先将2.5+0.5=3计算出来*/
    function calculatorInt() public pure returns (uint128) {
        uint128 a = 1;
        uint128 b = 2.5 + 0.5 + a;
        return b;
    }
}

