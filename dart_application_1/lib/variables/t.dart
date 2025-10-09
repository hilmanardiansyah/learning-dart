void main() {
  List<int> intList = [1, 2, 3];
  List<String> stringList = ['a', 'b', 'c'];

  print('First int: ${getFirstItem(intList)}');
  print('First string: ${getFirstItem(stringList)}');
}

T getFirstItem<T>(List<T> list) {
  return list.first;
}
