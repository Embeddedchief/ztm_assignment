//Exercise: pizza ordering
//giving the following map of pizza prices
//const pizzaPrices = {
//      'margherita': 5.5,
//      'pepperoni' : 7.5,
//      'vegetarian' : 6.5,
// };

//write a program to calculate the total for a given order

//program entry point
import 'dart:io';

void main() {
  Map<String, double> pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  while (true) {
    stdout.write('What pizza would you like to order');
    String response = stdin.readLineSync() as String;

    if (response == 'margherita' ||
        response == 'pepperoni' ||
        response == 'vegetarian') {
      print('let me check price');

      for (var key in pizzaPrices.keys) {
        if (key == response) {
          print(key.pizzaPrices);
        }
      }
    } else if (response == 'q') {
      //quiting the ordering program
      print('Thanks for checking us');
      break;
    } else {
      //to handle when input is not on the list of pizzas
      print(
        '$response pizza is not available, we have margherita, pepperoni and vegetarian',
      );
      continue;
    }
  }
}
