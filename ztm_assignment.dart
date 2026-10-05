//Entry point of the codes

// void main() {
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

// for (var i = 1; i <= 15; i++) {
//   if (i % 3 == 0 && i % 5 == 0) {
//     print('Fizz buzz');
//   } else if (i % 3 == 0) {
//     print('fizz');
//   } else if (i % 5 == 0) {
//     print('buzz');
//   } else {
//     print(i);
//   }
// }

//fizz buzz with break and continue
//making it behave like the former fizz buzz code without else if

// for (var i = 1; i <= 16; i++) {
//   if (i % 3 == 0 && i % 5 == 0) {
//     print('Fizz buzz');
//     break;
//   }
//   if (i % 3 == 0) {
//     print('fizz');
//     continue;
//   }
//   if (i % 5 == 0) {
//     print('buzz');
//     continue;
//   }
//   {
//     print(i);
//   }
// }
// print('Done');

//Switch statement
//   const pos = 10;
//   switch (pos) {
//     case 1:
//       print('gold');
//       break;
//     case 2:
//       print('silver');
//       break;
//     case 3:
//       print('bronze');
//       break;
//     default:
//       print('You got no medal, try again');
//   }
// }

enum Awards { Gold, Silver, bronze, noMedal }

void main() {
  const award = Awards.noMedal;

  switch (award) {
    case Awards.Gold:
      print('gold');
      break;
    case Awards.Silver:
      print('silver');
      break;
    case Awards.bronze:
      print('bronze');
      break;
    case Awards.noMedal:
      print('Nothing for you');
      break;
  }
}
