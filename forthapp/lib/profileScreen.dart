import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  var namefromprofile;
  Profilescreen(this.namefromprofile);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
        ),
        body: Center(child: Text(namefromprofile)));
  }
}
