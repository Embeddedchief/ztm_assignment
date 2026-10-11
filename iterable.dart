void main() {
  const list = [1, 2, 3];
  list.forEach(print);

  final doubles = transform(list, (x) => x * 2);
  final squares = transform(list, (x) => x * x);
  print(doubles);
  print(squares);
}

// final List<int> doubles = list.map((value) => value + 2).toList();
// print(doubles);
List<int> transform(List<int> items, int Function(int) f) {
  var result = <int>[];

  for (var x in items) {
    result.add(x * 2);
  }
  return result;
}
