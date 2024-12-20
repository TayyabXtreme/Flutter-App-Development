import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lastapppractice/introPage.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScrren> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Intropage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'ATX',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )));
  }
}
