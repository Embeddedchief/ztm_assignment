//creating and manipulating maps

//entry point of the code
import 'dart:ffi';

void main() {
  Map<String, dynamic> person = {
    'firstName': 'Samuel',
    'lastName': 'Abondejo',
    'role': 'developer',
    'age': '32',
  };

  String name = person['firstName'] as String;
  print(name);

  //manipulating person details
  person['firstName'] = 'Favour';
  person['role'] = 'Lab Scientist';
  person['age'] = 22;

  print(person['firstName'] as String);

  var weight = person['weight'];

  if (weight == null) {
    print('No value');
  } else {
    print(weight);
  }

  //making a map iterable
  for (var key in person.keys) {
    print(key);
  }
  for (var value in person.values) {
    print(value);
  }
}
