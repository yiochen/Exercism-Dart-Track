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
    for (var match in matches) {
      map.update(process(match[0]), (value) => value + 1, ifAbsent: () => 1);
    }
    return map;
  }
}
