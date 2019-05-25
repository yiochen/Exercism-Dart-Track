import "dart:math";

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    final splitted = number.toString().split('');
    final digits = splitted.length;
    final num sum = splitted.fold(0, (prev, elem) {
      final elemNumber = int.parse(elem);
      return prev + pow(elemNumber, digits);
    });
    return number == sum;
  }
}
