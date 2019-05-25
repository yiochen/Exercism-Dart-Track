class Isogram {
  bool isIsogram(String word) {
    final filtered = word.split('').where((rune) => rune != ' ' && rune != '-');
    final runeSet = new Set<String>();
    for (var rune in filtered) {
      if (runeSet.contains(rune.toUpperCase())) {
        return false;
      }
      runeSet.add(rune.toUpperCase());
    }
    return true;
  }
}
