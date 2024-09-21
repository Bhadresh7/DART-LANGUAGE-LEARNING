class user {
  int? _id;
  String? _name;
  int? _age;

  user(this._id, this._name, this._age);

  //getter
  int? get id => _id;

  String? get name => _name;

  int? get age => _age;

//setter
  set id(int? newId) {
    _id = newId;
  }

  set name(String? newName) {
    _name = newName;
  }

  set age(int? newAge) {
    _age = newAge;
  }
}

void main() {
  var User = user(1, "Rolex", 23);
  print(User.id);
  print(User.name);
  print(User.age);
}
