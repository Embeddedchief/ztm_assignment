//Build a command line program to play rock, paper, scissors with the computer
//When started the program should show this prompt
//Rock, paper or scissors? (r/p/s)
//it should read the user input and if the user picks
//r, p and s it should treat as valid input
//if the user picks q, it should end the program, anyother pick should be treated invalid
//if the user picks a valid move, generate a pick at random and compare with users pick according to the rule of the game

//import libraries for input/output and randomize
import 'dart:developer';
import 'dart:io';
import 'dart:math';

//enum method to store moves

enum moves { Rock, Paper, Scissors }

//Start point of the program
void main() {
  //create random holder and assign random method to it
  var playerChoice;

  while (true) {
    final loop = Random();
    //send out a prompt
    stdout.write('Rock, Paper, Scissors: ');
    //take the response and assign it to input
    final input = stdin.readLineSync();

    //conditional statement to handle the possible outcomes
    if (input == 'r' || input == 'p' || input == 's') {
      //confirmation a right choice is made
      print('Valid choice');
      if (input == 'r') {
        playerChoice == moves.Rock;
      } else if (input == 'p') {
        playerChoice == moves.Paper;
      } else {
        playerChoice == moves.Scissors;
      }
      //setting the random inputs
      final random = loop.nextInt(3);
      final computerChoice = moves.values[random];

      if (playerChoice == computerChoice) {
        print('Its a draw');
      } else if (playerChoice == moves.Rock && computerChoice == moves.Scissors || playerChoice == moves.Paper){
        print('You win');
      } else {
        print('You lose');
      }

    } else if (input == 'q') {
      //to thank the player for playing and quit the game when q is selected
      print('Thanks for playing');
      break;
    } else {
      //to inform user of invalid choice, when selected option is not r, p, s or q and continue the game
      print('Invalid choice, pick again');
      continue;
    }
  }
}
