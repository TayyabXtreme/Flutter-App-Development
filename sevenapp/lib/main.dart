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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: .0, end: 1.0).animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });

    animationController.forward();
  }

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        // body: Center(
        //   child: Container(
        //     width: animation.value,
        //     height: animation.value,
        //     color: Colors.black,
        //   ),
        // )
        //
        //
        //
        //
        //
        //
        //
        //

        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: listRadius.map((item) {
              return Container(
                width: item * animation.value,
                height: item * animation.value,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                      .withAlpha((255 - animation.value * 100).toInt()),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
