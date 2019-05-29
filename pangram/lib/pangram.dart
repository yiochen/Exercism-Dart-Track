final Z_CODE = 'z'.codeUnitAt(0);
final A_CODE = 'a'.codeUnitAt(0);

class Pangram {
  bool isPangram(String sentence) {
    final set = <String>{};

    sentence.split('').forEach((char) {
      final lowerCaseCode = char.toLowerCase().codeUnitAt(0);
      if (lowerCaseCode <= Z_CODE && lowerCaseCode >= A_CODE) {
        set.add(char.toLowerCase());
      }
    });
    return set.length == 26;
  }
}
