//Build a command line program to play rock, paper, scissors with the computer
//When started the program should show this prompt
//Rock, paper or scissors? (r/p/s)
//it should read the user input and if the user picks
//r, p and s it should treat as valid input
//if the user picks q, it should end the program, anyother pick should be treated invalid
//if the user picks a valid move, generate a pick at random and compare with users pick according to the rule of the game

//import libraries for input/output and randomize
import 'dart:io';
import 'dart:math';

//Start point of the program
void main() {
  while (true) {
    //write out the instruction to user
    stdout.write('Rock, paper or scissors? (r,p,s) ');

    //Take user input through prompt
    final input = stdin.readLineSync();

    //conditional statement to handle user choices
    if (input == 'r' || input == 'p' || input == 's') {
      print('You picked $input');
      continue;
    } else if (input == 'q') {
      print('Thank you for playing');
      break;
    } else {
      print('Invalid choice');
      continue;
    }
  }
}
