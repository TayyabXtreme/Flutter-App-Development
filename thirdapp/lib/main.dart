import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orangeAccent,
        child: Center(
            child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              //borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.greenAccent,
                  blurRadius: 5,
                  offset: Offset(-2, 2),
                  spreadRadius: 2,
                ),
              ],
              shape: BoxShape.circle),
          child: Center(child: Text('Hello World')),
        )),
      ),
    );
  }
}
