String process(String word) {
  return word
      .replaceAll(new RegExp(r"^'"), '')
      .replaceAll(new RegExp(r"'$"), "")
      .toLowerCase();
}

class WordCount {
  Map<String, int> countWords(String words) {
    final matches = new RegExp(r"(\d|\w|')+").allMatches(words);
    final map = <String, int>{};
    matches.forEach((match) {
      final word = process(match[0]);
      if (map[word] == null) {
        map[word] = 0;
      }
      map[word]++;
    });
    return map;
  }
}
