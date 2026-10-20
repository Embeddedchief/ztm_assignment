
import 'dart:io';

// 1. Product class
class Product {
  const Product({
    required this.id,
    required this.name,
    required this.price,
  });

  final int id;
  final String name;
  final double price;

  String get displayName => '$name: \$${price.toStringAsFixed(2)}';

  String get initial => name.substring(0, 1);
}

// 2. Item class
class Item {
  const Item({
    required this.product,
    this.quantity = 1,
  });

  final Product product;
  final int quantity;

  double get price => quantity * product.price;
}

// 3. Cart class
class Cart {
  final List<Item> _items = [];

  List<Item> get items => List.unmodifiable(_items);

  bool get isEmpty => _items.isEmpty;

  double get totalPrice =>
      _items.fold(0.0, (total, item) => total + item.price);

  void addProduct(Product product, {int quantity = 1}) {
    final index = _items.indexWhere(
      (item) => item.product.id == product.id,
    );

    if (index != -1) {
      final existingItem = _items[index];

      _items[index] = Item(
        product: product,
        quantity: existingItem.quantity + quantity,
      );
    } else {
      _items.add(Item(product: product, quantity: quantity));
    }
  }

  void printCart() {
    if (isEmpty) {
      print('\nYour cart is empty.');
      return;
    }

    print('\nThis is your order list: ');

    for (final item in _items) {
      print(
        '${item.product.name} x ${item.quantity} '
        '= \$${item.price.toStringAsFixed(2)}',
      );
    }

    print('Total: \$${totalPrice.toStringAsFixed(2)}');
  }

  void clear() => _items.clear();
}

// 4. Available products
const allProducts = [
  Product(id: 1, name: 'Apples', price: 2.30),
  Product(id: 2, name: 'Bread', price: 3.50),
  Product(id: 3, name: 'Milk', price: 4.20),
  Product(id: 3, name: 'Orange', price: 1.20),
  Product(id: 3, name: 'Carrot', price: 2.20),
];

// 5. Choose a product
Product? chooseProduct() {
  print('\nThis are the available products:');

  for (final product in allProducts) {
    print('${product.id}. ${product.displayName}');
  }

  stdout.write('Enter product ID: ');
  final response = stdin.readLineSync();
  final id = int.tryParse(response ?? '');

  if (id == null) {
    print('Please enter a valid number.');
    return null;
  }

  for (final product in allProducts) {
    if (product.id == id) {
      return product;
    }
  }

  print('Product not found.');
  return null;
}

// 6. Main program
void main() {
  final cart = Cart();

  while (true) {
    print('\n=== E-COMMERCE STORE ===');
    print('1. View cart');
    print('2. Add item');
    print('3. Checkout');
    print('4. Exit');

    stdout.write('Choose an option: ');
    final response = stdin.readLineSync();

    if (response == '1') {
      cart.printCart();
    } else if (response == '2') {
      final product = chooseProduct();

      if (product != null) {
        stdout.write('Enter quantity: ');
        final input = stdin.readLineSync();
        final quantity = int.tryParse(input ?? '');

        if (quantity == null || quantity <= 0) {
          print('Quantity must be a positive whole number.');
          continue;
        }

        cart.addProduct(product, quantity: quantity);
        print('${product.name} added to cart.');
      }
    } else if (response == '3') {
      if (cart.isEmpty) {
        print('Your cart is empty. Add products before checkout.');
        continue;
      }

      cart.printCart();
      print('Checkout complete. Thank you for shopping!');

      cart.clear();
      break;
    } else if (response == '4') {
      print('Goodbye!');
      break;
    } else {
      print('Invalid input. Select 1, 2, 3 or 4.');
    }
  }
}
