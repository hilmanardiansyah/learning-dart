void main() {
  Calculate sum = (a, b) => a + b;
  print('Sum result: ${sum(5, 7)}');
}

typedef Calculate = int Function(int a, int b);
