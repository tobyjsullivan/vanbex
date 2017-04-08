pragma solidity ^0.4.0;


// @title Submission for Vanbex
contract Vanbex {
  // Returns the sqrt to two decimal places multiplied by 100
  function sqrt(uint x)
    returns (uint root)
  {
    uint256 y = x * 10000;
    uint256 g = 200;
    while (y / g - g > 0) {
      g = (y / g + g) / 2;
    }

    return g;
  }


  function selectionSort(uint[] x)
    returns (uint[] sorted)
  {
    for (var unsortedIdx = 0; unsortedIdx < x.length; unsortedIdx++) {
      var min = x[unsortedIdx];
      var minIdx = unsortedIdx;

      for (var cursor = unsortedIdx; cursor < x.length; cursor++) {
        if (x[cursor] < min) {
          min = x[cursor];
          minIdx = cursor;
        }
      }

      var tmp = x[unsortedIdx];
      x[unsortedIdx] = x[minIdx];
      x[minIdx] = tmp;
    }

  }

  function factorial(int x)
    returns (int product)
  {
    // factorial is not applicable for negative values
    if (x < 0) {
      throw;
    }

    return int(doFactorial(uint(x)));
  }

  function doFactorial(uint x)
    returns (uint product)
  {
    if (x == 0) {
      return 1;
    }

    product = x * doFactorial(x - 1);
  }
}
