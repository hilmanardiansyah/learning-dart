import 'animal.dart';
import 'mixin_collection.dart';

class Fish extends Animal with Swimmable {}

void main() {
  Fish fish = Fish();
  fish.eat();
  fish.swim();
}
