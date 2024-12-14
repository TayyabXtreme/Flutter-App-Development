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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Flutter container'),
        ),
        // body: Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.lightGreenAccent,
        //   child: Text('Hello Worlds'),
        // ),
        // //container
        // body: Text('Hello Flutter',
        //     style: TextStyle(
        //       fontSize: 18,
        //       color: Colors.indigo,
        //       fontWeight: FontWeight.bold,
        //       backgroundColor: Colors.lightGreenAccent,
        //     )
        //     )
        //     );
        //   body: Center(
        //     child: Container(
        //       width: 150,
        //       height: 150,
        //       color: Colors.lightGreenAccent,
        //       child: Center(child: Text('Hello Worlds')),
        //     ),
        //   ),
        // body: TextButton(
        //   onPressed: () {
        //     print('Button Clicked');
        //   },
        //   child: Text('Click Me'),
        //   onLongPress: () {
        //     print('Long Pressed');
        //   },
        // ) //textbutton
        // body: ElevatedButton(
        //     onPressed: () {
        //       print('Button Clicked');
        //     },
        //     child: Text('Click Me')) //elevatedbutton
        body: OutlinedButton(
            onPressed: () {
              print('Button Clicked');
            },
            child: Text('Click Me')) //outlinedbutton

        );
  }
}
