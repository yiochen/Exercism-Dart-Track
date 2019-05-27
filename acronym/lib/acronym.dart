class Acronym {
  String abbreviate(String words) {
    return words.splitMapJoin(new RegExp(r"[ \-_]+"),
        onMatch: (group) => '', onNonMatch: (word) => word[0].toUpperCase());
  }
}
