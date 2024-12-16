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
        textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            labelLarge: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.pink)),
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
  callback() {
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    DateTime? datePicked;
    var email = TextEditingController();
    var time = DateTime.now();
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

        // body: Center(
        //     child: Text(
        //   'Hello World',
        //   style: TextStyle(
        //       fontFamily: 'fontMain',
        //       fontWeight: FontWeight.w500,
        //       fontSize: 24,
        //       fontStyle: FontStyle.italic),
        // ))
        //
        //
        //
        //
        //
        ///////////////////////Text Theme
        ///
        ///
        // body: Column(
        //   children: [
        //     Text('HEllo World',
        //         style: Theme.of(context).textTheme.headlineLarge),
        //     Text('HEllo World'),
        //     Text('HEllo World',
        //         style: Theme.of(context)
        //             .textTheme
        //             .labelLarge!
        //             .copyWith(color: Colors.red)),
        //     Text('HEllo World')
        //   ],
        // )
        //
        //
        //
        //
        //
        //
        //
        //
        ///////////////////Card Widget
        ///
        ///
        ///
        ///
        // body: Center(
        //     child: Card(
        //         color: Colors.yellow,
        //         shadowColor: Colors.blue,
        //         elevation: 12,
        //         child: Padding(
        //             padding: EdgeInsets.all(20),
        //             child: Text(
        //               'HEllo card Widget',
        //               style:
        //                   TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //             ))))
        //
        //
        //
        //
        //
        //
        //
        ///////////////////////////Text Input
        ///
        ///
        ///
        ///
        // body: Center(
        //     child: SizedBox(
        //         width: 300,
        //         child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               TextField(
        //                 decoration: InputDecoration(
        //                     border: OutlineInputBorder(
        //                         borderSide: BorderSide(color: Colors.yellow),
        //                         borderRadius: BorderRadius.circular(20))),
        //               ),
        //               Container(
        //                 height: 11,
        //               ),
        //               TextField(
        //                 controller: email,
        //                 // enabled: false,
        //                 decoration: InputDecoration(
        //                     focusedBorder: OutlineInputBorder(
        //                         borderSide:
        //                             BorderSide(color: Colors.yellow, width: 3),
        //                         borderRadius: BorderRadius.circular(20)),
        //                     enabledBorder: OutlineInputBorder(
        //                       borderSide:
        //                           BorderSide(color: Colors.orange, width: 3),
        //                       borderRadius: BorderRadius.circular(20),
        //                     ),
        //                     disabledBorder: OutlineInputBorder(
        //                       borderSide:
        //                           BorderSide(color: Colors.red, width: 3),
        //                       borderRadius: BorderRadius.circular(20),
        //                     ),
        //                     suffixText: "username text",
        //                     suffixIcon: IconButton(
        //                         onPressed: () {},
        //                         icon: Icon(
        //                           Icons.remove_red_eye,
        //                           color: Colors.orange,
        //                         )),
        //                     prefixIcon: IconButton(
        //                         onPressed: () {},
        //                         icon: Icon(Icons.add_a_photo))),
        //               ),
        //               ElevatedButton(
        //                   onPressed: () {
        //                     String uname = email.text.toString();
        //                     print("Email is $uname");
        //                   },
        //                   child: Text('Click Here'))
        //             ])))
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
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        /////////////////////current Data and Time
        ///
        ///
        ///
        ///
        ///
        ///
        // body: Center(
        //     child:
        //         Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //   Text('Data and time ${time.timeZoneName}  '),
        //   ElevatedButton(
        //       onPressed: () {
        //         setState(() {});
        //       },
        //       child: Text('Current time'))
        // ]))
        //
        //
        //
        //
        //
        //
        //
        //
        //
        // Date Format pattern

        // body: Center(
        //     child: InkWell(
        //   onLongPress: () => {setState(() {})},
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     child: Column(
        //       children: [
        //         Text('Current time :${DateFormat('jms').format(time)}')
        //       ],
        //     ),
        //   ),
        // ))
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //                  Date Time picker
        //
        //
        //
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         'Select Date ${datePicked}',
        //         style: TextStyle(fontSize: 25),
        //       ),
        //       ElevatedButton(
        //           onPressed: () async {
        //             datePicked = await showDatePicker(
        //                 context: context,
        //                 initialDate: DateTime.now(),
        //                 firstDate: DateTime(2021),
        //                 lastDate: DateTime(2025));

        //             setState(() {});
        //           },
        //           child: Text('Hello'))
        //     ],
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
        //
        //
        //
        //
        //
        //
        //
        ///////////////////Grid View
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        // body: GridView.count(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   children: [
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(color: Colors.pink),
        //     Container(
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       color: Colors.brown,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //     )
        //   ],
        // )
        //
        //
        //
        //
        /////////////////////////Cakk back button
        ///
        ///
        ///
        ///
        // body: ElevatedButton(onPressed: callback, child: Text('Click me'))
        //
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
        ///
        ///
        //////////////////////Splitting Widgets
        ///
        ///
        ///
        ///
        ///
        body: Column(
          children: [
            CatItems(),
            Messages(),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                )),
            Expanded(
                child: Container(
              color: Colors.yellow,
            )),
          ],
        )

        //
        );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
            color: Colors.red,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                    ),
                  )),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
            )));
  }
}

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        flex: 5,
        child: Container(
            color: Colors.green,
            child: ListView.builder(
              itemBuilder: (context, index) {
                var images = [
                  'assets/images/gojo.jpeg',
                  'assets/images/goku.jpeg',
                  'assets/images/naruto.jpeg',
                  'assets/images/ichigo.jpeg',
                  'assets/images/luggy.jpeg',
                  'assets/images/goat.jpeg'
                ];
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: ListTile(
                    subtitle: Text('Hello reply me?'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text('Gojo Saturo'),
                    trailing: Icon(Icons.delete),
                  ),
                );
              },
              itemCount: 6,
            )));
  }
}
