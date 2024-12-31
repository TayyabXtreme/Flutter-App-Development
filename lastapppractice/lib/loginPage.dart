import 'package:flutter/material.dart';
import 'package:lastapppractice/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<Loginpage> {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
              child: Text(
            'Login Page',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
        body: Container(
            child: Center(
                child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 200,
                            height: 80,
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(
                                Icons.account_circle,
                                color: Colors.white,
                                size: 80,
                              ),
                            )),
                        SizedBox(
                          height: 11,
                        ),
                        TextField(
                            controller: email,
                            decoration: InputDecoration(
                                label: Text('Name'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21)))),
                        SizedBox(
                          height: 11,
                        ),
                        TextField(
                          controller: password,
                          decoration: InputDecoration(
                              label: Text('Password'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21))),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () async {
                              print(
                                  '${email.text.toString()}${password.text.toString()}');
                              var prefs = await SharedPreferences.getInstance();
                              prefs.setString("account",
                                  '${email.text.toString()}${password.text.toString()}');
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomePage(title: 'Tayyab'),
                                  ));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )))));
  }
}
