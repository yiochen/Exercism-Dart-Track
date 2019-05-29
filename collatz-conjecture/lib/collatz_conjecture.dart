class CollatzConjecture {
  int steps(int start) {
    if (start <= 0) {
      throw new ArgumentError("Only positive numbers are allowed");
    }
    var step = 0;
    var value = start;
    while (value != 1) {
      if (value % 2 == 0) {
        value ~/= 2;
      } else {
        value = value * 3 + 1;
      }
      step++;
    }
    return step;
  }
}
