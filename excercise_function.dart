//Write a function called sum tht takes a list of values
//return the sum of all the list of doubles
//Call the function multiple times with different input values and print the result

//entry point of the code
void main() {
  double result = add([1.1, 2.2, 3.3]);
  print(result);
}

//function
double add(List<double> values) {
  var add = 0.0;
  for (var value in values) {
    add += value;
  }
  return add;
}
