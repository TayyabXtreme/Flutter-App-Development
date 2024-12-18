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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Clipper'),
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
  var _width = 200.0;
  var _height = 100.0;
  var a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        // body: Center(
        //     child: ClipRRect(
        //         borderRadius: BorderRadius.only(topLeft: Radius.circular(21)),
        //         child: Container(
        //           color: Colors.grey,
        //           width: 200,
        //           height: 200,
        //         )))
        //
        //
        //
        //

        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              color: Colors.grey,
            ),
            ElevatedButton(
                onPressed: () {
                  if (a == 1) {
                    _width = 100.0;
                    _height = 200.0;
                    a = 0;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    a = 1;
                  }
                  setState(() {});
                },
                child: Text('Animate'))
          ],
        )));
  }
}
