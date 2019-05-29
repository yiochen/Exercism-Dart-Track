class PascalsTriangle {
  List<List<int>> rows(int number) {
    final result = <List<int>>[];
    var prevRow = <int>[];
    for (var row = 0; row < number; row++) {
      final currentRow = <int>[];
      for (var pos = 0; pos < row; pos++) {
        currentRow.add((pos == 0 ? 0 : prevRow[pos - 1]) + prevRow[pos]);
      }
      currentRow.add(1);
      result.add(currentRow);
      prevRow = currentRow;
    }
    return result;
  }
}
