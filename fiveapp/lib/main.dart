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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BMI Calculator'),
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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
              child: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Container(
            color: bgColor ?? Colors.indigo.shade200,
            child: Center(
                child: SizedBox(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'BMI',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        TextField(
                          controller: wtController,
                          decoration: InputDecoration(
                              label: Text('Enter Your Weight in Kgs'),
                              prefixIcon: Icon(Icons.line_weight)),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        TextField(
                          controller: ftController,
                          decoration: InputDecoration(
                              label: Text('Enter Your Height in Feet'),
                              prefixIcon: Icon(Icons.height)),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        TextField(
                          controller: inController,
                          decoration: InputDecoration(
                              label: Text('Enter Your Height in inch'),
                              prefixIcon: Icon(Icons.height)),
                          keyboardType: TextInputType.number,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var wt = wtController.text.toString();
                            var ft = ftController.text.toString();
                            var inch = inController.text.toString();

                            if (wt != '' && ft != '' && inch != '') {
                              var iWt = int.parse(wt);
                              var iFt = int.parse(ft);
                              var iInch = int.parse(inch);
                              var tInch = (iFt * 12) + iInch;
                              var tCm = tInch * 2.54;
                              var tM = tCm / 100;
                              var bmi = iWt / (tM * tM);
                              var msg = "";

                              if (bmi > 25) {
                                msg = "You're OverWeight!!!";
                                bgColor = Colors.orange.shade200;
                              } else if (bmi < 18) {
                                msg = "You're UnderWeight!!!";
                                bgColor = Colors.red.shade200;
                              } else {
                                msg = "You are Health!!";
                                bgColor = Colors.green.shade200;
                              }

                              setState(() {
                                result =
                                    '$msg \nYour BMI is ${bmi.toStringAsFixed(2)}';
                              });
                            } else {
                              setState(() {
                                result =
                                    "Please fill all the required blancks!!";
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo),
                          child: Text(
                            'Calculate',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          result,
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )))));
  }
}
