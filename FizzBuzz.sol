pragma solidity 0.8.10;

contract FizzBuzz {

  function run(uint256 _upperBound) external pure returns(uint256) {
    uint256 result = 0;
    for (uint256 i = 0; i < _upperBound; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        result +=i; 
      }
    }
    return result;
  }

}  
