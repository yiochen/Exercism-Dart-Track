class Acronym {
  String abbreviate(String words) {
    final splitted = words.split(new RegExp(r"[ \-_]+"));
    print(splitted);
    return splitted.map((elem) => elem[0].toUpperCase()).join('');
  }
}
