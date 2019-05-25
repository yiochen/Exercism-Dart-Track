const colorMap = {
  'black': 0,
  'brown': 1,
  'red': 2,
  'orange': 3,
  'yellow': 4,
  'green': 5,
  'blue': 6,
  'violet': 7,
  'grey': 8,
  'white': 9,
};

class ResistorColorDuo {
  int value(List<String> colors) {
    return colorMap[colors[0]] * 10 + colorMap[colors[1]];
  }
}
