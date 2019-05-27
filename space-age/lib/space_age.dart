import 'package:meta/meta.dart';

const EARTH_DAY = 31557600;
const map = {
  'Earth': 31557600,
  'Mercury': 0.2408467 * EARTH_DAY,
  'Venus': 0.61519726 * EARTH_DAY,
  'Mars': 1.8808158 * EARTH_DAY,
  'Jupiter': 11.862615 * EARTH_DAY,
  'Saturn': 29.447498 * EARTH_DAY,
  'Uranus': 84.016846 * EARTH_DAY,
  'Neptune': 164.79132 * EARTH_DAY
};

class SpaceAge {
  num age({@required String planet, @required int seconds}) {
    return (seconds / map[planet] * 100).round() / 100;
  }
}
