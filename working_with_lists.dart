//write a  =code to add a list of numbers together and print the sum

//start oint of the code

void main() {
  //list of numbers to be added assigned to a variable number
  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  number[3] = 9;

  //variable sum decaled and assigned 0
  int sum = 0;

  for (int num in number) {
    sum += num;
  }

  print(sum);

  //playing around possible methods with list
  print(number.length);
  print(number.last);
  print(number.first);
  print(number.isEmpty);
  print(number.isNotEmpty);

  number.add(10);
  print(number);
  number.remove(10);
  print(number);
  print(number.indexOf(9));
}
