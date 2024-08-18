
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array{


    //动态数组只有在storage时可以用数组字面值初始化，其他情况都不允许
    uint8[] dArray2 = [uint8(1),2,3];
    string demo = "hello world";


    /*静态字节数组*/
    function test() public pure returns(bytes1) {
        bytes3 b = 'abc';
        return b[1];
    }

    //初始化数组
    function initArray() public pure{
        //静态数组定义，此时所有元素初始值为0
        uint8[3] memory sArray1;
        //静态数组初始化
        uint8[3] memory sArray2 = [uint8(1),2,3];

        //动态数组定义
        uint8[] memory arr;
        //动态数组定义与初始化，初始值为0
        uint8[] memory dArray = new uint8[](10);
    }

    //切片slice只能作用于calldata
    function extracFourBytes(string calldata payload) public view returns(string memory){
        string memory leading4Bytes = string(payload[:4]);
        return leading4Bytes;
    }



    //只有动态数组，并且数据位置为storage时才有成员push(),puspure sh(x),pop()
    uint8[] arr;
    function arrayFunc() public returns(uint){
        arr.push();
        arr.push(uint8(12));
        return arr.length;
    }


    //多维数组,5代表列，3代表行
    uint8[5][3] arrA;

    //bytes数组中的string和bytes互转
    //bytes转string
    function bytesToString() public pure returns (bytes memory) {
        bytes memory bstr = new bytes(10); // 正确的语法
        string memory message = string(bstr); // 使用string()函数转换 
        return bstr;
    }

    //string转bytes
    function stringToBytes() public pure returns (bytes memory) {
        string memory message = "Hello";
        bytes memory bstr = bytes(message);
        return bstr;
    }


 
}

