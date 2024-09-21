import 'dart:io';

class MyException implements Exception {
  String err() {
    return "This is invalid";
  }
}

void parser(int? value) {
  if (value == null) {
    throw MyException();
  } else {
    print('You entered a valid integer: $value');
  }
}

void main() {
  while (true) {
    stdout.write('Enter a number: ');
    String? number = stdin.readLineSync();
    int? value = int.tryParse(number!);

    try {
      parser(value);
    } catch (e) {
      if (e is MyException) {
        print(e.err());
      }
    }
  }
}
