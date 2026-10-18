class Animal {
  void sleep() => print('Sleeping');
}

class Dog extends Animal {
  void bark() => print('Barking');
}

class CleverDog extends Dog {
  void catchBall() => print('Ball caught');
}

void main() {
  final animal = Animal();
  animal.sleep();

  final dog = Dog();
  dog.bark();
  dog.sleep();

  final cleverDog = CleverDog();
  cleverDog.bark();
  cleverDog.catchBall();
  cleverDog.sleep();
}
