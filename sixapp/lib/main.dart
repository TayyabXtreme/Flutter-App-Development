import 'package:flutter/material.dart';
import 'package:sixapp/detialedpage.dart';

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
  var myopacity = 1.0;
  final _width = 200.0;
  final _height = 100.0;
  bool first = true;
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

        // body: Center(
        //     child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     AnimatedContainer(
        //       duration: Duration(seconds: 2),
        //       width: _width,
        //       height: _height,
        //       color: Colors.grey,
        //     ),
        //     ElevatedButton(
        //         onPressed: () {
        //           if (a == 1) {
        //             _width = 100.0;
        //             _height = 200.0;
        //             a = 0;
        //           } else {
        //             _width = 200.0;
        //             _height = 100.0;
        //             a = 1;
        //           }
        //           setState(() {});
        //         },
        //         child: Text('Animate'))
        //   ],
        // ))
        //
        //
        //

        // body: Center(
        //     child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     AnimatedOpacity(
        //         opacity: myopacity,
        //         duration: Duration(seconds: 2),
        //         child: Container(width: 100, height: 100, color: Colors.blue)),
        //     ElevatedButton(
        //         onPressed: () {
        //           if (myopacity == 1.0) {
        //             myopacity = 0.0;
        //           } else {
        //             myopacity = 1.0;
        //           }
        //           setState(() {});
        //         },
        //         child: Text('Animated'))
        //   ],
        // ))
        //
        //
        //
        //
        //
        //

        // body: Center(
        //     child: Column(children: [
        //   AnimatedCrossFade(
        //       firstChild:
        //           Container(width: 200, height: 300, color: Colors.orange),
        //       secondChild: Container(width: 200, height: 300, color: Colors.red),
        //       crossFadeState:
        //           first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        //       duration: Duration(seconds: 3)),
        //   ElevatedButton(
        //       onPressed: () {
        //         first = !first;
        //         setState(() {});
        //       },
        //       child: Text('Change'))
        // ])),

        // body: Container(
        //   child: Center(
        //     child: InkWell(
        //         onTap: () {
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => Detialedpage(),
        //               ));
        //         },
        //         child: Hero(
        //             tag: 'background',
        //             child: Image.asset(
        //               'assets/images/goat.jpeg',
        //               width: 150,
        //               height: 150,
        //             ))),
        //   ),
        // ),

        body: ListWheelScrollView(itemExtent: 100, children: [
          Container(width: 200, color: Colors.black),
          Container(width: 200, color: Colors.green),
          Container(width: 200, color: Colors.orange),
          Container(width: 200, color: Colors.blue)
        ]));
  }
}
