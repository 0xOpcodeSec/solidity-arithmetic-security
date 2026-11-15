// SPDX-License-Identifier: MIT
pragma solidity ^0.8.38;

contract CheckedMulInt {

    error ArithmeticError();

    function checkedMulInt(
        int256 a,
        int256 b
    ) public pure returns (int256 c) {

        unchecked {
            c = a * b;

            if (a > 0 && b > 0 && a > type(int256).max / b) {
                revert ArithmeticError();
            }

            if (a > 0 && b < 0 && a < type(int256).min / b) {
                revert ArithmeticError();
            }

            if (a < 0 && b > 0 && a < type(int256).min / b) {
                revert ArithmeticError();
            }

            if (a < 0 && b < 0 && a < type(int256).max / b) {
                revert ArithmeticError();
            }
        }
    }
}
