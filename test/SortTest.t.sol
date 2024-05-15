// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {ISort} from "src/ISort.sol";

contract SortTest is Test {
    ISort sort;

    function setUp() public virtual{
        sort = ISort(HuffDeployer.config().deploy("sort"));
    }

    function testSort() external{
        uint[] memory arr = new uint[](3);
        arr[0] = 2;
        arr[1] = 3;
        arr[2] = 1;
        uint[] memory result = sort.sort(arr);

        assertEq(result[0], 1);
        assertEq(result[1], 2);
        assertEq(result[2], 3);

    }
}
