// SPDX-License-Identifier: MIT
pragma solidity ^0.8.38;

import "./CheckedMulInt.sol";

contract CheckedMulIntTest {
    CheckedMulInt target = new CheckedMulInt();

    function testPositivePositive() public view {
        assert(target.checkedMulInt(10, 2) == 20);
    }

    function testNegativeNegative() public view {
        assert(target.checkedMulInt(-10, -2) == 20);
    }

    function testPositiveNegative() public view {
        assert(target.checkedMulInt(10, -2) == -20);
    }

    function testNegativePositive() public view {
        assert(target.checkedMulInt(-10, 2) == -20);
    }
    
    function testZero() public view {
        assert(target.checkedMulInt(0, 100) == 0);
    }
}
