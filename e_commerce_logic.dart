import 'dart:io';

// Create a product class
// set it to take id, name and price parameters
// create a const constructor for them and make it required
class Product {
  const Product({required this.id, required this.name, required this.price});
  final int id;
  final String name;
  final double price;
}
// create an item class
// let it take product and quantity parameters
// create a const constructor for them and make it required
// let quantity constructor euqal 1
// create a getter method  to use quantiy*product.price

class Item {
  Item({required this.quantity, required this.product});

  final Product product;
  final int quantity;
}

//create a cart class
class Cart {}

const allProducts = [Product(id: 1, name: 'apples', price: 2.30)];

void main() {
  // create infinite loop
  while (true) {
    // prompt view cart, add item, checkout
    stdout.write(
      'Choose "1" to view cart, "2" to add item and "3" to checkout',
    );

    final response = stdin.readLineSync();
    // if selection == add item
    // choose a product
    // add it to the cart
    // print cart
    if (response == 1) {
      print('object');

      // else if selection == view cart
      // print cart
    } else if (response == 2) {
      print('object');

      // else if selection == checkout
      //exit
    } else if (response == 3) {
      print('object');
    } else {
      print("invalid input, select 1, 2 or 3 to move forward");
    }
  }
}
