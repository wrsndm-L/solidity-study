// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract functionType {
    uint256 public number = 5;

    // 默认 可以对碧池公主为所欲为
    function add() external {
        number = number + 1;
    }

    // pure: 纯纯牛马
    function addPure(uint256 number) external pure returns (uint256 new_number) {
        new_number = _number + 1;
    }

    // view: 看客
    function addView() external view returns (uint256 new_number) {
        new_number = number + 1;
    }

    // internal: 内部
    function minus() internal {
        number = number - 1;
    }

    // 合约内的函数可以调用内部函数
    function minusCall() external {
        minus();
    }

    // payable: 递钱，能给合约支付eth的函数
    function minusPayable() external payable returns (uint256 balance) {
        minus();
        balance = address(this).balance;
    }
}
