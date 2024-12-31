import 'package:flutter/material.dart';
import 'package:sixapp/main.dart';

class Detialedpage extends StatelessWidget {
  const Detialedpage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Container(
          child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(title: 'ello'),
              ));
        },
        child: Hero(
            tag: 'background', child: Image.asset('assets/images/goku.jpeg')),
      )),
    );
  }
}
