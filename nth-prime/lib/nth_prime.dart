class NthPrime {
  static final List<int> _cache = [1];
  int prime(int n) {
    if (n == 0) {
      throw new ArgumentError('There is no zeroth prime');
    }
    while (_cache.length <= n) {
      var possiblePrime = _cache.last + 1;
      while (_cache.skip(1).any((prime) => possiblePrime % prime == 0)) {
        possiblePrime++;
      }
      _cache.add(possiblePrime);
    }
    return _cache[n];
  }
}
