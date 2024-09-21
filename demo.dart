import 'dart:io';

class exmaple {
  void method(arr) {
    print(arr);
  }
}

interface class vehicle {
  void method() {}
}

class honda implements vehicle {
  @override
  void method() {
    stdout.writeln("Hello From Honda class");
  }
}

void main() {
  List list = [1, 3, 5, 7];
  exmaple ex = exmaple();
  ex.method(list);
  honda override = honda();
  override.method();
}
