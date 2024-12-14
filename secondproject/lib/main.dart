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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var names = ['Tayyab', 'Ali', 'Ahmed', 'Khan', 'Munib', 'Abrar'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Flutter container'),
        ),
        // body: Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.lightGreenAccent,
        //   child: Text('Hello Worlds'),
        // ),
        // //container
        // body: Text('Hello Flutter',
        //     style: TextStyle(
        //       fontSize: 18,
        //       color: Colors.indigo,
        //       fontWeight: FontWeight.bold,
        //       backgroundColor: Colors.lightGreenAccent,
        //     )
        //     )
        //     );
        //   body: Center(
        //     child: Container(
        //       width: 150,
        //       height: 150,
        //       color: Colors.lightGreenAccent,
        //       child: Center(child: Text('Hello Worlds')),
        //     ),
        //   ),
        // body: TextButton(
        //   onPressed: () {
        //     print('Button Clicked');
        //   },
        //   child: Text('Click Me'),
        //   onLongPress: () {
        //     print('Long Pressed');
        //   },
        // ) //textbutton
        // body: ElevatedButton(
        //     onPressed: () {
        //       print('Button Clicked');
        //     },
        //     child: Text('Click Me')) //elevatedbutton
        // body: OutlinedButton(
        //     onPressed: () {
        //       print('Button Clicked');
        //     },
        //     child: Text('Click Me')) //outlinedbutton

///////////////////////////////////////Buttons and container end here
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ////////////////Images in flutter
        ///
        ///
        ///
        ///
        // body: Center(
        //     child: Image.asset(
        //   'assets/images/gojo.jpeg',
        //   width: 200,
        //   height: 200,
        // )) //image
        //
        //
        //
        ////////////////Colomns and Row widgets
        ///
        ///
        ///
        ///
        ///
        // body: Container(
        //     width: MediaQuery.of(context).size.width,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       children: <Widget>[
        //         Text('Hello Flutter 1'),
        //         Text('Hello Flutter 2'),
        //         // Text('Hello Flutter 3'),
        //         ElevatedButton(
        //             onPressed: () {
        //               print('HEllo');
        //             },
        //             child: Text('Click me'))
        //       ],
        //     ))
        //
        //
        ////////////////////////Ink Well
        // body: Center(
        //     child: InkWell(
        //         onTap: () {
        //           print('Inkwell clicked');
        //         },
        //         onLongPress: () => print('Inkwell long pressed'),
        //         child: Container(
        //             width: 200,
        //             height: 200,
        //             color: Colors.pink,
        //             child: Center(
        //               child:
        //                   Text('Hello World', style: TextStyle(fontSize: 20)),
        //             ))))

        //
        //
        //
        //
        //
        //
        //
        /////////////////////////////   Scroll View And Its Types
        ///
        // body: SingleChildScrollView(
        //     child: Column(
        //   children: [
        //     Container(
        //       margin: EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       color: Colors.pink,
        //     ),
        //     Container(
        //         margin: EdgeInsets.only(bottom: 11),
        //         height: 200,
        //         color: Colors.blue),
        //     Container(
        //         margin: EdgeInsets.only(bottom: 11),
        //         height: 200,
        //         color: Colors.yellow),
        //     Container(
        //       margin: EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       color: Colors.pink,
        //     ),
        //     Container(
        //         margin: EdgeInsets.only(bottom: 11),
        //         height: 200,
        //         color: Colors.blue),
        //     Container(
        //         margin: EdgeInsets.only(bottom: 11),
        //         height: 200,
        //         color: Colors.yellow)
        //   ],
        // ))
        //
        //
        //
        //
        //
        /////////////////////////////   List View And Its Types
        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('one',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('two',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('three',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('four',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('five',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('six',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('seven',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('eight',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        //     ),
        //   ],
        // )

        ///////////////////////////////

        // body: ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text(names[index],
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500));
        //   },
        //   itemCount: names.length,
        //   itemExtent: 100,
        //   scrollDirection: Axis.horizontal,
        // )

        ////////////////
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Text(names[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500));
            },
            separatorBuilder: (context, index) =>
                Divider(height: 200, thickness: 2),
            itemCount: names.length)

        //
        );
  }
}
