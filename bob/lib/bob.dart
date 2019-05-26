bool isShouting(String words) {
  final alphabetRegex = new RegExp(r"[a-zA-Z]");
  final String onlyWords =
      words.split('').where((part) => alphabetRegex.hasMatch(part)).join('');
  return onlyWords == onlyWords.toUpperCase() && onlyWords.length > 0;
}

bool isQuestion(String words) {
  return words.endsWith("?");
}

bool isYelledQuestion(String words) {
  return isQuestion(words) && isShouting(words);
}

String preprocess(String words) {
  return words.trim();
}

class Bob {
  String response(String words) {
    final processed = preprocess(words);
    if (processed == '') {
      return "Fine. Be that way!";
    }
    if (isYelledQuestion(processed)) {
      return "Calm down, I know what I'm doing!";
    }
    if (isQuestion(processed)) {
      return "Sure.";
    }
    if (isShouting(processed)) {
      return "Whoa, chill out!";
    }
    return "Whatever.";
  }
}
