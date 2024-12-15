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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'ali',
      'Tayyab',
      'imran',
      'munib',
      'abrar',
      'tauha',
      'Kashan',
      'Anees',
      'Hassan',
      'Salaudin'
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Dashboard",
            style: TextStyle(color: Colors.red),
          ),
        ),
        ///////////////////////////////////Decoratorion
        //
        // body: Container(
        //   width: double.infinity,
        //   height: double.infinity,
        //   color: Colors.orangeAccent,
        //   child: Center(
        //       child: Container(
        //     width: 100,
        //     height: 100,
        //     decoration: BoxDecoration(
        //         color: Colors.lightGreenAccent,
        //         //borderRadius: BorderRadius.circular(10),
        //         border: Border.all(color: Colors.black, width: 2),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.greenAccent,
        //             blurRadius: 5,
        //             offset: Offset(-2, 2),
        //             spreadRadius: 2,
        //           ),
        //         ],
        //         shape: BoxShape.circle),
        //     child: Center(child: Text('Hello World')),
        //   )),
        // ),
        //
        //
        ////////////////////////Expanded Widget
        // body: SizedBox(
        //     width: double.infinity,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Expanded(
        //             flex: 2,
        //             child: Container(
        //               height: 100,
        //               color: Colors.blue,
        //             )),
        //         Expanded(
        //             flex: 2,
        //             child: Container(
        //               height: 100,
        //               color: Colors.black,
        //             )),
        //         Expanded(
        //             flex: 4,
        //             child: Container(
        //               height: 100,
        //               color: Colors.orange,
        //             )),
        //         Expanded(
        //             flex: 2,
        //             child: Container(
        //               height: 100,
        //               color: Colors.pink,
        //             )),
        //         Expanded(
        //             child: Container(
        //           height: 100,
        //           color: Colors.green,
        //         )),
        //       ],
        //     ))
        ///////////////////////////
        ///
        ///
        ///
        ///
        //////////////////////////Margin and Padding
        ///
        ///
        ///
        ///////////////////////////padding
        // body: Padding(
        //     padding: EdgeInsets.only(top: 10, left: 34),
        //     child: Text('Hello World'))
        //////////////
        ///
        ///
        ////////////////////////////margin
        // body: Container(
        //     color: Colors.amber,
        //     margin: EdgeInsets.all(10),
        //     child: Padding(
        //       padding: EdgeInsets.all(10),
        //       child: Text('Hello Flutter'),
        //     ))
        //
        //
        //
        //
        //
        /////////////////////////////List Tile
        ///
        ///
        ///
        ///
        // body: ListView.separated(
        //     itemBuilder: (context, index) {
        //       return ListTile(
        //         leading: Text('${index + 1}'),
        //         title: Text(arrNames[index]),
        //         subtitle: Text('Number'),
        //         trailing: Icon(Icons.add),
        //       );
        //     },
        //     separatorBuilder: (context, index) {
        //       return Divider(
        //         height: 10,
        //         thickness: 2,
        //       );
        //     },
        //     itemCount: arrNames.length)
        //
        //
        //
        //
        //
        /////////////////CircleEavatar
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        // body: Center(
        //     child: CircleAvatar(
        //   radius: 100,
        //   backgroundColor: Colors.red,
        //   backgroundImage: AssetImage('assets/images/gojo.jpeg'),
        //   child: Text(
        //     'Gojo Saturo',
        //     style: TextStyle(color: Colors.white, fontSize: 21),
        //   ),
        // ))
        //
        //
        //
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        /////////////////////////custom fonts

        body: Center(
            child: Text(
          'Hello World',
          style: TextStyle(
              fontFamily: 'fontMain',
              fontWeight: FontWeight.w500,
              fontSize: 24,
              fontStyle: FontStyle.italic),
        )));
  }
}
