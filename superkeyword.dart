class Parent {
  int _id;
  String _name;

  Parent({int? id, String? name}) // positional arguments
      : _id = id ?? 0,
        _name = name ?? "undefined";

  void printValues() {
    print('ID: $_id');
    print('Name: $_name');
  }
}

class child extends Parent {
  double _salary;

  child({int? id, String? name, double? salary}) //positional arguments
      : _salary = salary ?? 0.0,
        super(id: id, name: name);

  void printValues() {
    super.printValues();
    print("Salary: ${_salary}");
  }
}

void main() {
  child c = child(id: 1, name: "Inheritance", salary: 9000000);
  child c1 = child(id: null, name: null, salary: null);
  print("This is null safety");
  print("------" * 9);
  c1.printValues();
  print("------" * 9);
  print("This is normal way of giving inputs");
  c.printValues();
  print("------" * 9);
  print("EOD");
}
