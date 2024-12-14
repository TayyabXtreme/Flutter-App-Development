void main() {
  print("Welcome to Dart");
  String name = "Tayyab";
  var subject;
  subject = "Dart";
  // var is dynamic type variable
  // ❌ var is not allowed to change the type of variable subject=1;
  print("My name is $name and I am learning $subject");
  dynamic age = 20;
  age = "Twenty";
  print("My age is $age");
}
