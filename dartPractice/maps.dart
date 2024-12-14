main() {
  var map_name = {
    'name': 'John',
    'age': 25,
    'city': 'New York',
  };
  print(map_name['city']);
  print(map_name.isEmpty);
  print(map_name.length);
  print(map_name.keys);
  print(map_name.values);
  print(map_name.containsKey('name'));
  print(map_name.containsValue('John'));
  map_name.remove('age');
  print(map_name);
  map_name.addAll({'name': 'John Doe', 'age': 30});
  print(map_name);
}
