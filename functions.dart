//void function
// void main() {
//   person('shola', 22);
// }

// void person(String name, int age) {
//   print('Hello $name, you are $age years old');
// }

//function that has a return type thats not void

void main() {
  final personDetails = person('Alafia', 5.5);
  print(personDetails);
}

String person(String name, double height) {
  return 'Hello, im $name, i am $height tall';
}
