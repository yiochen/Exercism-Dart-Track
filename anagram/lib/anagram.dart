String sort(String original) => (original.split('')..sort()).join('');

class Anagram {
  List<String> findAnagrams(String keyword, List<String> tests) {
    final lowerCaseKeyword = keyword.toLowerCase();
    final sortedKeyword = sort(lowerCaseKeyword);
    return tests.where((test) {
      final lowerCaseTest = test.toLowerCase();
      return sort(lowerCaseTest) == sortedKeyword &&
          lowerCaseKeyword != lowerCaseTest;
    }).toList();
  }
}
