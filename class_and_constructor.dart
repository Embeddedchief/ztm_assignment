class BankAccount {
  BankAccount(double balance) {
    this.balance = balance;
  }

  double balance = 0;

  void deposit(double ammount) {
    balance += ammount;
  }

  void withdrawal(double ammount) {
    if (ammount > balance) {
      print('Insufficient');
    } else {
      balance -= ammount;
    }
  }
}

void main() {
  final bankAccount1 = BankAccount(100);
  print(bankAccount1);
}
