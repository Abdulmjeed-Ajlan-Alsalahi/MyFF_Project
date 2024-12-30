import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/home.dart';

class ThirdLec extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.blueAccent,
    title: Text("Third Home Work"),
    leading: IconButton(onPressed:() {
    Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                  (route) => false);
 },  icon: const Icon(Icons.home)),
  ) ,
 backgroundColor: Colors.black,
 body: Center(
 child: Container(
 width: 300,
 height: 300,
 padding: EdgeInsets.all(30),
 color: const Color.fromARGB(255, 21, 129, 218),
 child: Container(
 decoration: BoxDecoration(
 color: Colors.black,
borderRadius: 
BorderRadius.all(Radius.circular(20))),
 padding: EdgeInsets.all(5),
 child: Container(
 decoration: BoxDecoration(
 color: const Color.fromARGB(255, 204, 185, 14),
 borderRadius: 
BorderRadius.all(Radius.circular(20))),
 padding: EdgeInsets.all(40),
 child: Transform.rotate(
 angle: 270,
child: Container(
 padding: EdgeInsets.all(30),
 color: const Color.fromARGB(255, 187, 32, 21),
child: Container(
 decoration: BoxDecoration(
 color: const Color.fromARGB(255, 17, 134, 21),
borderRadius: BorderRadius.only(
 topRight: Radius.circular(30),
 bottomRight: Radius.circular(30),
 topLeft: Radius.circular(10),
 bottomLeft: Radius.circular(10))),
 // padding: EdgeInsets.all(20),
child: Text(
 "hello",
style: TextStyle(color: Colors.white),
 ),
 ),
 ),
 ),
 ),
 )),
 ),
 ),
 );
 }
}