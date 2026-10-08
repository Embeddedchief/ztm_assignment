//entry point of the program
void main() {
  
  const addWhite = true; //using const data type, since we cant use string for bool
  bool addBlack = false; //checking if it would work with bool

  const addExtracolors = true;
  const extraColors = ['indigo', 'violet', 'grey'];

  List<String> colors = [
    'green', 'yellow', 'blue', 'red', 'purple',

    //collection if statement
    if (addBlack) 'black',
    if (addWhite) 'white',
    if (addExtracolors) ...extraColors,
  ];

  print(colors);

  //regular if statement
  if (addWhite == true) {
    colors.add('white');
  }

  if (addBlack == true) {
    colors.add('black');
  }

  print(colors);
}
