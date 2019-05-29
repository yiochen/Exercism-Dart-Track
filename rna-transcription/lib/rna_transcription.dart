const map = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'};

class RnaTranscription {
  String toRna(String DNA) {
    if (RegExp(r'^[GCTA]*$').firstMatch(DNA) == null) {
      throw ArgumentError('invalid nucleotides');
    }
    return DNA.splitMapJoin(RegExp(r'[GCTA]'),
        onMatch: (match) => map[match[0]], onNonMatch: (space) => '');
  }
}
