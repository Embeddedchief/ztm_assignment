//creating and manipulating maps

//entry point of the code
void main() {
  Map<String, dynamic> person = {
    'firstName': 'Samuel',
    'lastName': 'Abondejo',
    'role': 'developer',
    'age': '32',
  };

  print(person);
  
  //manipulating person details
  person['firstName'] = 'Favour';
  person['role'] = 'Lab Scientist';
  person['age'] = 22;

  print(person);
}
