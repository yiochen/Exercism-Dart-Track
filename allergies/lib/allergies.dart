const mask = {
  'eggs': 1,
  'peanuts': 2,
  'shellfish': 4,
  'strawberries': 8,
  'tomatoes': 16,
  'chocolate': 32,
  'pollen': 64,
  'cats': 128,
};

const items = [
  'eggs',
  'peanuts',
  'shellfish',
  'strawberries',
  'tomatoes',
  'chocolate',
  'pollen',
  'cats'
];

class Allergies {
  bool allergicTo(String type, int score) {
    return score & mask[type] > 0;
  }

  List<String> list(int score) {
    var result = <String>[];
    items.forEach((type) {
      if (allergicTo(type, score)) {
        result.add(type);
      }
    });
    return result;
  }
}
