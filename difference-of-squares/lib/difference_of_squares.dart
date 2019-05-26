class DifferenceOfSquares {
  // Put your code here
  int squareOfSum(int number) {
    var sum = 0;
    for (var i = 1; i <= number; i++) {
      sum = sum + i;
    }
    return sum * sum;
  }

  int sumOfSquare(int number) {
    var sum = 0;
    for (var i = 1; i <= number; i++) {
      sum = sum + i * i;
    }
    return sum;
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquare(number);
  }
}
