void main() {
  print('Welcome to Dart');
  myFunc('Tayyab');
}

void myFunc(String name) {
  print("Welcome to Dart");
  var classes = myClass(name);
  classes.printname();
}

class myClass {
  String name;
  myClass(this.name);
  void printname() {
    print(name);
  }
}
