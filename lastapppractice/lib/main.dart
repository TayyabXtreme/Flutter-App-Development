import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();
  static const String KEYNAME = "name";
  var nameValue = "No Value Saved";
  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
            child: SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          label: Text('Name'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          print(nameController.text.toString());
                          var prefs = await SharedPreferences.getInstance();
                          prefs.setString(
                              KEYNAME, nameController.text.toString());
                        },
                        child: Text('Save')),
                    SizedBox(
                      height: 11,
                    ),
                    Text(nameValue)
                  ],
                ))));
  }

  void getValue() async {
    var pref = await SharedPreferences.getInstance();
    var getName = pref.getString(KEYNAME);
    nameValue = (getName != null) ? getName : "No Value Saved";

    setState(() {});
  }
}
