pragma solidity 0.8.10;

contract FizzBuzz {
  // You can add more state variables here

    function run(uint256 _upperBound) external pure returns (uint256) {
        _upperBound -= 1; // Exclude _upperBound from the sum

        uint256 sumDivisibleBy = sumMultiples(_upperBound, 3) + sumMultiples(_upperBound, 5) - sumMultiples(_upperBound, 15);
        return sumDivisibleBy;
    }

    function sumMultiples(uint256 _upperBound, uint256 n) internal pure returns (uint256) {
        uint256 p = _upperBound / n;
        return n * (p * (p + 1)) / 2;
    }
}