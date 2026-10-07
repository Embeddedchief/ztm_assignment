//Given to set of integers a and b, write  a program to calcualte the set of the elements that belong to either a or b, but not both
//the calculate and print print the sum of all the items in the resulting set

//entry point of the program

void main() {
  const a = {1, 3};
  const b = {3, 5};

  var result = a.difference(b).union(b.difference(a));

  print(result);

  var sum = 0;

  for (var value in result) {
    sum += value;
  }
  print(sum);
}
