import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/home.dart';

Color c = Colors.white;
Color b = const Color.fromARGB(255, 240, 224, 87);
SizedBox sbw = SizedBox(
 width: 20,
);
SizedBox sbh = SizedBox(
 height: 20,
);

class SecondLec extends StatelessWidget {
 void fun1() {
 print("object");
 }
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 home: Scaffold(
 appBar: AppBar(
 backgroundColor: const Color.fromARGB(255, 105, 186, 252),
 title: Text(
 "materialApp",
 style: TextStyle(color: Colors.white),
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
 Icon(
 Icons.info,
 ),
 PopupMenuButton<int>(
 itemBuilder: (context) => [],
 color: Colors.white,
 elevation: 2,
 )
 ],

 ),
 body: Center(
 child: Container(
 width: 350,
 height: 600,
 child: AppBar(
 title: Center(
   child: Text(
   "This Is The Continer In This App",
   ),
 ),
 backgroundColor: const Color.fromARGB(255, 12, 87, 79),
 ),
 ),
 ),
 ),
 );
}
}