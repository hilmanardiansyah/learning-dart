void main() {
  for (var counter = 0; counter < 5; counter++) {
    print('counter is $counter');
  }

  List<String> fruits = ['apple', 'banana', 'orange'];

  for (String fruit in fruits) {
    print(fruit);
  }
}
