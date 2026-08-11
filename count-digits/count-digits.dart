import 'dart:io';

void main() {
  int digit = 0;
  stdout.write("Enter your number: ");
  String input = stdin.readLineSync() ?? '';
  int? number = int.tryParse(input);

  while (number != 0) {
    number = (number! ~/ 10);
    digit++;
  }

  print("Number of digits: ${digit}");
}
