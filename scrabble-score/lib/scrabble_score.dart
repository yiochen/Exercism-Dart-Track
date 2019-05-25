import "package:scrabble_score/utils.dart";

const scoreOne = 'AEIOULNRST';
const scoreTwo = 'DG';
const scoreThree = 'BCMP';
const scoreFour = 'FHVWY';
const scoreFive = 'K';
const scoreEight = 'JX';
const scoreTen = 'QZ';

final Map<String, int> scoreMap = {}
  ..addAll(toMap(scoreOne, 1))
  ..addAll(toMap(scoreTwo, 2))
  ..addAll(toMap(scoreThree, 3))
  ..addAll(toMap(scoreFour, 4))
  ..addAll(toMap(scoreFive, 5))
  ..addAll(toMap(scoreEight, 8))
  ..addAll(toMap(scoreTen, 10));

int score(String word) {
  final int sum = word
      .split('')
      .fold(0, (prev, current) => prev + scoreMap[current.toUpperCase()]);
  return sum;
}
