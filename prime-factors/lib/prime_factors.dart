class PrimeFactors {
  List<int> factors(int value) {
    if (value < 2) {
      return [];
    }

    var current = value;
    var lastPrime = 2;
    final factors = <int>[];
    while (current > 1) {
      if (current % lastPrime == 0) {
        factors.add(lastPrime);
        current = current ~/ lastPrime;
      } else {
        // find the next prime > lastPrime and <= current
        lastPrime = Iterable<int>.generate(
                current - lastPrime, (index) => index + lastPrime + 1)
            .firstWhere((possiblePrime) => current % possiblePrime == 0);
      }
    }
    return factors;
  }
}
