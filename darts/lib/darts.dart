const score10 = 1 * 1;
const score5 = 5 * 5;
const score1 = 10 * 10;

class Darts {
  int score(num x, num y) {
    final distanceSquare = x * x + y * y;
    if (distanceSquare <= score10) {
      return 10;
    }
    if (distanceSquare <= score5) {
      return 5;
    }
    if (distanceSquare <= score1) {
      return 1;
    }
    return 0;
  }
}
