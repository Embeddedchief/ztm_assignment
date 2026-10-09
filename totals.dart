import 'dart:io';

//entry point of the code

void main(List<String> argument) {
  //this is to check if the input argument is empty
  if (argument.isEmpty) {
    print('This requires a csv file <inputFile.csv');
    exit(1);
  }
  //creating a variable inputFile to hold the argument
  final inputFile = argument.first;
  // make the system read each lines in the inputFile
  final lines = File(inputFile).readAsLinesSync();

  //for statement to loop through each lines of the file
  for (var line in lines) {
    print(line);
  }
}
