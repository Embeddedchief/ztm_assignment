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

  //creating an emptly map totaldurarionbytag
  final totalDurationByTag = <String, double>{};

  //for statement to loop through each lines of the file
  for (var line in lines.skip(1)) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];

    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
  }
  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'Unallocated' : entry.key;
    print('$tag: ${durationFormatted}');
  }
}
