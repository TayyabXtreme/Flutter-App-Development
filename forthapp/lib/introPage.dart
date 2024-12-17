import 'package:flutter/material.dart';
import 'package:forthapp/main.dart';

class Intropage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyHomePage(title: 'HomePage');
                  },
                ));
              },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}
