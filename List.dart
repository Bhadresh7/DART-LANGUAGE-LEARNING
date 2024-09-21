import 'dart:io';

void main() {
  List<int> list = [];

  while (true) {
    print("Enter a value to be added to the list (or type 'done' to finish):");
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'done') {
      break;
    }

    try {
      int value = int.parse(input);
      list.add(value);
    } catch (e) {
      print("Invalid input. Please enter a valid integer.");
    }
  }
  print('Final list of integers: $list');
}
