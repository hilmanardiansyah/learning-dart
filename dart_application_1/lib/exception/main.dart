import 'simple.dart';

void main() {
  final simple = Simple(name: 'Simple');

  try {
    simple.printName(); // cukup panggil tanpa print
    simple.throwException();
  } catch (exception) {
    print('Exception Thrown $exception');
  }
}
