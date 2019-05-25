import 'package:test/test.dart';
import 'package:scrabble_score/scrabble_score.dart';

void main() {
  group('Scrabble score', () {
    group('should return a score of 0 for', () {
      test('empty input', () {
        expect(score(''), equals(0));
      }, skip: false);
    });

    group('should return the appropriate score for', () {
      test('lowercase letters', () {
        expect(score('a'), equals(1));
      });

      test('uppercase letters', () {
        expect(score('A'), equals(1));
      });

      test('valuable letters', () {
        expect(score('f'), equals(4));
      });

      test('english-like word', () {
        expect(score('pinata'), equals(8));
      });

      test('long, mixed-case word', () {
        expect(score('OxyphenButazone'), equals(41));
      });

      test('medium, valuable word', () {
        expect(score('quirky'), equals(22));
      });

      test('medium word', () {
        expect(score('street'), equals(6));
      });

      test('short, valuable word', () {
        expect(score('zoo'), equals(12));
      });

      test('short word', () {
        expect(score('at'), equals(2));
      });

      test('a word containing one of every letter of the alphabet', () {
        expect(score('abcdefghijklmnopqrstuvwxyz'), equals(87));
      });

      test('a word containing one of every letter of the alphabet in reverse',
          () {
        expect(score('zyxwvutsrqponmlkjihgfedcba'), equals(87));
      });
    });
  });
}
