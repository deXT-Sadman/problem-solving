import 'dart:io';

void main() {
  int digit = 0;
  stdout.write("Enter your number: ");
  String? input = stdin.readLineSync();

  try {
    int number = int.parse(input!).abs();
    if (number == 0) {
      digit++;
    }

    while (number != 0) {
      number = (number ~/ 10);
      digit++;
    }

    print("Number of digits: ${digit}");
  } on FormatException {
    print("Invalid number!");
  }
}
