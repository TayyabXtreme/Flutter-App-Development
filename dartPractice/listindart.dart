main() {
  var listnames = ["Tayyab", "Ali", "Ahmed"];
  listnames.add("Khan");
  listnames.add('Hamza');
  var name = [];
  name.add(1);
  name.add(2);
  name.addAll(listnames);
  name.add('Aliyan');
  name.add(22.33);
  name.insert(1, "Ali bhai 1");

  //update the list

  print(name);
}
