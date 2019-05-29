class Luhn {
  bool valid(String sequence) {
    if (RegExp(r"[^0-9 ]").firstMatch(sequence) != null) {
      return false;
    }
    final allNumbers =
        RegExp(r"\d").allMatches(sequence).map((match) => int.parse(match[0]));
    if (allNumbers.length <= 1) {
      return false;
    }
    var shouldDouble = allNumbers.length % 2 == 0;
    var sum = 0;
    allNumbers.forEach((number) {
      var value = number;
      if (shouldDouble) {
        value = value * 2;
        if (value > 9) {
          value = value - 9;
        }
        shouldDouble = false;
      } else {
        shouldDouble = true;
      }
      sum = sum + value;
    });

    return sum % 10 == 0;
  }
}
