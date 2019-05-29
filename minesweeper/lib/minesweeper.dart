class Minesweeper {
  final List<String> _sourceMap;
  final int height;
  final int width;
  static int getWidth(final List<String> sourceMap) {
    if (sourceMap == null) {
      return 0;
    }
    if (sourceMap.length > 0) {
      return sourceMap[0].length;
    }
    return 0;
  }

  static int getHeight(final List<String> sourceMap) {
    return sourceMap?.length ?? 0;
  }

  const Minesweeper._const(this._sourceMap, this.height, this.width);

  Minesweeper([List<String> _sourceMap])
      : this._const(_sourceMap, Minesweeper.getHeight(_sourceMap),
            Minesweeper.getWidth(_sourceMap));

  List<String> get annoted {
    if (_sourceMap == null) {
      return null;
    }
    final resultMap = <String>[];
    for (var row = 0; row < this._sourceMap.length; row++) {
      final currentRow = this._sourceMap[row];
      var annotedRow = <String>[];
      for (var col = 0; col < currentRow.length; col++) {
        switch (this._sourceMap[row][col]) {
          case '*':
            annotedRow.add('*');
            break;
          case ' ':
            final count = _count(row, col);
            if (count > 0) {
              annotedRow.add(count.toString());
            } else {
              annotedRow.add(' ');
            }
            break;
        }
      }
      resultMap.add(annotedRow.join());
    }
    return resultMap;
  }

  int _count(int row, int col) {
    var count = 0;
    for (var dRow = -1; dRow <= 1; dRow++) {
      for (var dCol = -1; dCol <= 1; dCol++) {
        final newRow = row + dRow;
        final newCol = col + dCol;
        if (newRow >= 0 &&
            newRow < height &&
            newCol >= 0 &&
            newCol < width &&
            !(dRow == 0 && dCol == 0)) {
          if (_sourceMap[newRow][newCol] == '*') {
            count++;
          }
        }
      }
    }
    return count;
  }
}
