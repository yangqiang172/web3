// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UserDefineVaule{

    //原生类型定义
    type Weight is uint128;
    type Price is uint128;

    //使用wrap类型将原生类型转换为自定义类型
    Weight w = Weight.wrap(28);
    Price p = Price.wrap(11);

    //使用unwrap类型将自定义类型转换为原生类型
    uint128 a = Weight.unwrap(w);
    uint128 b = Price.unwrap(p);

}