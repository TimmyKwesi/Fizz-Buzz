pragma solidity 0.8.10;

contract FizzBuzz {
  function run(uint256 _upperBound) external pure returns (uint256) {
    unchecked {
      --_upperBound; // Exclude _upperBound from the sum

      uint256 p3 = _upperBound / 3;
      uint256 p5 = _upperBound / 5;
      uint256 p15 = _upperBound / 15;

      // Combine calculations for efficiency:

      return ((3 * (p3 * (p3 + 1)) >> 1) + (5 * (p5 * (p5 + 1)) >> 1) - (15 * (p15 * (p15 + 1)) >> 1));

      // return sumDivisibleBy
    }
  }
}
