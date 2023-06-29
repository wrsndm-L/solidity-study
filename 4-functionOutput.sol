// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract functionOutput {
    //Solidity有两个关键字与函数输出相关：return和returns，他们的区别在于：
    //returns加在函数名后面，用于声明返回的变量类型及变量名；
    //return用于函数主体中，返回指定的变量。

    // 返回多个变量
    function returnMultiple() public pure returns (uint256, bool, uint256[3] memory){
        return (1, true, [uint256(1), 2, 5]);
    }

    // 命名式返回
    function returnNamed() public pure returns (uint256 _number, bool _bool, uint256[3] memory _array){
        _number = 2;
        _bool = false;
        _array = [uint256(3), 2, 1];
    }

    // 命名式返回，依然支持return
    function returnNamed2() public pure returns (uint256 _number, bool _bool, uint256[3] memory _array){
        return (1, true, [uint256(1), 2, 5]);
    }


}
