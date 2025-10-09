import 'person.dart';
import 'student.dart';

void main() {
  // Create an object (instance) of the class
  Person person1 = Person('Alice', 25);
  person1.sayHello();

  // Change property value using setter

  person1.age = 26;

  // Get property value using getter
  print('Updated Age: ${person1.age}');

  // Create another object
  Person person2 = Person('Bob', 30);
  person2.sayHello();

  // Example of inheritance
  Student student = Student('Charlie', 20, 'Computer Science');
  student.sayHello();
  student.study();

  // Example of polymorphism
  Person person3 = Student('David', 22, 'Mathematics');

  person3.sayHello(); // Will call overridden method from Student class
}
