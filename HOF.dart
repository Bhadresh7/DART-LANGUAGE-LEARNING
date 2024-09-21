void evenNumbers(List<num> arr, Function myFun) {
  myFun(arr);
}

void myFun(List<num> arr) {
  arr.forEach((e) => e % 2 == 0 ? print("Even") : print("Odd"));
}

void main() {
  List<int> myList = [1, 6, 4, 7];
  List<double> doubleList = [34, 24.88];

  print("-" * 10);
  evenNumbers(myList, myFun);
  print("_" * 10);
  evenNumbers(doubleList, myFun);
}
