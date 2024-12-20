import 'package:flutter/material.dart';
import 'package:lastapppractice/loginPage.dart';
import 'package:lastapppractice/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

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
              onPressed: () async {
                var prefs = await SharedPreferences.getInstance();
                var account = prefs.getString('account');
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return account == "tayyab@gmail.com123123"
                        ? MyHomePage(title: 'Tayyab')
                        : Loginpage();
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
