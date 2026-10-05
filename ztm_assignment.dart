//Entry point of the codes

void main() {

  //Question 1

//Create two int variables 'net salary' and 'expenses'
//wrtie a program to determine if there is money saved, loss or salary is the same using if else statement
  // int netSalary = 50000;
  // int expenses = 50000;

  // if (netSalary > expenses) {
  //   print('You have saved #${netSalary - expenses} this month');
  // } else if (expenses > netSalary) {
  //   print('You have lost #${expenses - netSalary} this month');
  // } else {
  //   print('Your salary is exhausted');


//Question 2

//Fizz Buzz algorithm
//write a code that nests if-else inside for loop


  for (var i = 0; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('Fuzz buzz');
    } else if (i % 3 == 0) {
      print('print fizz');
    } else if (i % 5 == 0) {
      print('buzz');
    } else {
      print(i);
    }
  }
}
