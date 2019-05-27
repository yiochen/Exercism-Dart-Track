class PhoneNumber {
  String clean(String raw) {
    var digits = new RegExp(r"\d")
        .allMatches(raw)
        .map((group) => int.parse(group[0]))
        .toList();
    if (digits.length < 10 || digits.length > 11) {
      return null;
    }
    if (digits.length == 11 && digits.first == 1) {
      digits = digits.skip(1).toList();
    }
    if (digits.length != 10) {
      return null;
    }
    if (digits[0] >= 2 && digits[3] >= 2) {
      return digits.join();
    }
    return null;
  }
}
