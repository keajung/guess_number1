//top-level function
import 'dart:io';
import 'dart:math';
void main() {
  var count = 0;
  var r = Random();
  int answer = r.nextInt(100);

  stdout.write('╔');
  for(int i=0;i<45;++i){
    stdout.write('═');
  }
  print('');
  print('║              GUESS THE NUMBER            ');
  stdout.write('╟');
  for(int i=0;i<45;++i){
    stdout.write('═');
  }
  print('');
  while (true) {
    stdout.write('║ Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    if(int.tryParse(input!)!=null){
      dynamic guess = int.tryParse(input!);
      if (guess == answer) {
        count++;
        print('║ ➜ ' + guess.toString() + ' IS COLLECT ❤, total guesses: '+count.toString());
        count=0;
        break;
      } else {
        count++;
        if(guess < answer){
          print('║ ➜ '+ guess.toString() + ' is TOO LOW! ▼');
        }else {
          print('║ ➜ ' + guess.toString() + ' is TOO HIGH! ▲');
        }
      }
      stdout.write('╟');
      for(int i=0;i<45;++i){
        stdout.write('═');
      }
      print('');
    }
  }
  stdout.write('╟');
  for(int i=0;i<45;++i){
    stdout.write('═');
  }
  print('');
  print('║                  THE END            ');
  stdout.write('╚');
  for(int i=0;i<45;++i){
    stdout.write('═');
  }
  print('');
}
