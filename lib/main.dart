import 'dart:io';

void main() {
  print('Digite uma string:');
  String input = stdin.readLineSync() ?? '';

  print('Digite a letra que deseja contar (uma única letra):');
  String letter = stdin.readLineSync() ?? '';

  if (letter.length != 1) {
    print('Por favor, digite apenas uma única letra.');
    return;
  }

  int count = countLetter(input, letter);

  if (count > 0) {
    print('A letra "$letter" ocorre $count vez(es) na string.');
  } else {
    print('A letra "$letter" não foi encontrada na string.');
  }
}

int countLetter(String str, String letter) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i].toLowerCase() == letter.toLowerCase()) {
      count++;
    }
  }
  return count;
}
