import 'dart:io';

//entry point of the code

void main(List<String> argument) {
  if (argument.isEmpty) {
    print('This requires a csv file <inputFile.csv');
    exit(1);
  }
  final inputFile = argument.first;
  final lines = File(inputFile).readAsLinesSync();

  //for statement to loop through each lines of the file
  for (var line in lines) {
    print(line);
  }
}
