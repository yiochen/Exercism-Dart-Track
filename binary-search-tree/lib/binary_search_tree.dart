class Node {
  final String data;
  Node left;
  Node right;
  Node(this.data);
  int get value => int.tryParse(data);
  bool operator <(Node n) => value < n.value;
  bool operator >(Node n) => value > n.value;
  bool operator <=(Node n) => value < n.value || this == n;
  bool operator >=(Node n) => value > n.value || this == n;
  @override
  int get hashCode {
    return int.tryParse(data);
  }

  bool operator ==(Object other) {
    if (other is! Node) {
      return false;
    }
    Node otherNode = other as Node;
    return otherNode.value == this.value;
  }
}

class BinarySearchTree {
  final Node root;
  BinarySearchTree(String rootLabel) : root = new Node(rootLabel);

  void _insertUnder(Node root, Node current) {
    if (current <= root) {
      if (root.left == null) {
        root.left = current;
      } else {
        _insertUnder(root.left, current);
      }
    } else {
      if (current > root) {
        if (root.right == null) {
          root.right = current;
        } else {
          _insertUnder(root.right, current);
        }
      }
    }
  }

  void insert(String nodeLabel) {
    final newNode = Node(nodeLabel);
    _insertUnder(root, newNode);
  }

  List<String> get sortedData {
    final result = <String>[];
    void inOrder(Node n) {
      if (n == null) {
        return;
      }
      inOrder(n.left);
      result.add(n.data);
      inOrder(n.right);
    }

    inOrder(root);
    return result;
  }
}
