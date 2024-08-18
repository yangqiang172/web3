
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Integer {

// 整型溢出后导致交易回滚，因为uint8最大存储的正整数为255，如果再加1就会导致溢出
    function overflow() public pure  returns (uint8 result){
        uint8 a = 255;
        a = a+1;
        return a;
    }

    /*在计算b时会先将2.5+0.5=3计算出来*/
    function calculatorInt() public pure returns (uint128) {
        uint128 a = 1;
        uint128 b = 2.5 + 0.5 + a;
        return b;
    }
}