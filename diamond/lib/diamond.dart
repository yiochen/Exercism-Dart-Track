import 'dart:math';

class Diamond {
  List<String> rows(String letter) {
    final middleCode = letter.codeUnitAt(0);
    final codeOfA = 'A'.codeUnitAt(0);
    final half = middleCode - codeOfA;
    final result = <String>[];
    for (var row = 0; row <= half * 2; row++) {
      final distanceFromTip = min(row, half * 2 - row);
      final currentChar = String.fromCharCode(codeOfA + distanceFromTip);
      final inside = distanceFromTip == 0
          ? currentChar
          : currentChar + " " * (2 * distanceFromTip - 1) + currentChar;
      final padding = ' ' * (half - distanceFromTip);
      result.add(padding + inside + padding);
    }
    return result;
  }
}
