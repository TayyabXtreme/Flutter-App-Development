import 'dart:io';

void main() {
  print('Welcome to Dart');
  stdout.writeln('Enter your name');
  var name = stdin.readLineSync();
  var insan = Human();
  insan.walk();

  print("Welcom, $name");
}

class Human {
  Human();

  void walk() {
    print('Human is walking');
  }
}
