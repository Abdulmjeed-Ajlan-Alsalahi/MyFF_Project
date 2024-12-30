import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/home.dart';

Color c = Colors.white;
Color b = const Color.fromARGB(255, 236, 215, 22);
SizedBox sbw = SizedBox(
 width: 20,
);
SizedBox sbh = SizedBox(
 height: 20,
);

class FourthLec extends StatelessWidget {
 void fun1() {
 print("object");
 }
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 home: Scaffold(
 backgroundColor: Colors.black,
 appBar: AppBar(
 backgroundColor: const Color.fromARGB(255, 255, 133, 95),
 title: Center(
   child: Text(
   " sample title",
   style: TextStyle(color: const Color.fromARGB(255, 10, 10, 10)),
   ),
 ),
  leading: IconButton(onPressed:() {
    Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                  (route) => false);
 },  icon: const Icon(Icons.home)),

 actions: [
 Padding(
 padding: const EdgeInsets.all(15),
 child: Icon(
 Icons.motorcycle_outlined,
 color: const Color.fromARGB(255, 0, 0, 0),
 ),
 ),
 Icon(
 Icons.car_crash,
 color: const Color.fromARGB(255, 0, 0, 0),
 ),
 PopupMenuButton<int>(
 itemBuilder: (context) => [],
 color: const Color.fromARGB(255, 0, 0, 0),
 elevation: 2,
 )
 ],
 ),
 body: Center(
 child: Text("Hello",
 style: TextStyle(
 color: Colors.white,
 fontSize: 20,
 )),
 ),
 ),
 );
 }
}