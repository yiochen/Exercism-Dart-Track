class Raindrops {
  String convert(int number) {
    var sound = '';
    if (number % 3 == 0) {
      sound = sound + 'Pling';
    }
    if (number % 5 == 0) {
      sound = sound + 'Plang';
    }
    if (number % 7 == 0) {
      sound = sound + 'Plong';
    }
    if (sound.isEmpty) {
      sound = number.toString();
    }
    return sound;
  }
}
