class Person {
  Person({
    required this.name,
    required this.role,
    required this.age,
    required this.height,
    required this.experience,
  });

  final String name;
  final String role;
  final int age;
  final double height;
  final int experience;

  void printAbout() {
    print(
      'My name is $name, i am $age years old and $height ft tall, i have $experience years experience as a $role',
    );
  }
}

void main() {
    final person1 = Person(
    name: 'Samuel',
    role: 'Mobile app developer',
    age: 25,
    height: 6.1,
    experience: 2,
    );

    person1.printAbout();
}
