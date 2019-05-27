class Hamming {
  int distance(String seq1, String seq2) {
    if (seq1.length != seq2.length) {
      throw new ArgumentError("lengths need to be the same");
    }
    var count = 0;
    for (var pos = 0; pos < seq1.length; pos++) {
      if (seq1[pos] != seq2[pos]) {
        count++;
      }
    }
    return count;
  }
}
