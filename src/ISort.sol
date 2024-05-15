// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ISort{
    function sort(uint256[] calldata) external returns(uint256[] memory);
}