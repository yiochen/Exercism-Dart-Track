class MatchingBrackets {
  bool isPaired(String test) {
    final stack = <String>[];
    final brackets = test.split('').where((char) => '()[]{}'.contains(char));
    for (var bracket in brackets) {
      switch (bracket) {
        case '(':
          stack.add(')');
          break;
        case '[':
          stack.add(']');
          break;
        case '{':
          stack.add('}');
          break;
        default:
          if (stack.isEmpty || stack.last != bracket) {
            return false;
          }
          stack.removeLast();
      }
    }
    return stack.isEmpty;
  }
}
