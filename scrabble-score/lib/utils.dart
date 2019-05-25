Map<String, int> toMap(String word, int score) {
  final splitted = word.split('');
  final Map<String, int> scoreMap = new Map.fromIterable(
    splitted,
    key: (dynamic item) => item.toString(),
    value: (dynamic item) => score,
  );
  return scoreMap;
}
