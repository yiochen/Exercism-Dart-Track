final isbnMatcher = RegExp(r"^\d-?\d{3}-?\d{5}-?[0-9X]$");

bool isValid(String seq) {
  if (isbnMatcher.firstMatch(seq) == null) {
    return false;
  }
  final allDigits = seq.replaceAll('-', '').split('').map((digit) {
    if (digit.toUpperCase() == 'X') {
      return 10;
    }
    return int.parse(digit);
  });
  var sum = 0;
  allDigits.toList().asMap().forEach((index, value) {
    sum = sum + (10 - index) * value;
  });
  return sum % 11 == 0;
}
