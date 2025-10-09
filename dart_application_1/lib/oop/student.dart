import 'person.dart';

class Student extends Person {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void sayHello() {
    print('Hi! I\'m $name, a student majoring in $major.');
  }

  void study() {
    print('$name is studying $major.');
  }
}
