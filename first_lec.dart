import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/home.dart';

class FirstLec extends StatelessWidget {
  const FirstLec({super.key});

 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 home: Scaffold(
 backgroundColor:  const Color.fromARGB(255, 203, 250, 165),
 appBar: AppBar(
 title: const Text(" MY INFORMITON",
 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
 ),
 leading: IconButton(onPressed:() {
    Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                  (route) => false);
 },  icon: const Icon(Icons.home)),
 centerTitle: true,
 actions: const [
 Padding(
 padding: EdgeInsets.all(8.0),
 child: Icon(
 Icons.saved_search,
 color: Color.fromARGB(255, 0, 0, 0),
 ),
 ),
 Padding(
 padding: EdgeInsets.all(8.0),
 child:Icon(
 Icons.account_circle_outlined,
 color: Color.fromARGB(255, 0, 0, 0),
 ),
 )
 ],
 backgroundColor: Colors.blueAccent,
 ),
 body: Center(
 child: Container(
 decoration: const BoxDecoration(
 borderRadius: BorderRadius.all(Radius.circular(30))),
 width: 380,
 height: 750,
 child: Text(
"Name:ABDULMJEED AL-SAlAHI \n AGE:22 \n Nationality : Yemeni  \n Magor : IT \n Skills :  Phone and Computer Programming  \n",
 textDirection: TextDirection.ltr,
 style: TextStyle(backgroundColor: const Color.fromARGB(255, 243, 122, 114), fontSize: 25),
 ),
 ),
 ),
 drawer: const Drawer(
 child: Text(
"This" ,
 textDirection: TextDirection.rtl,
 style: TextStyle(fontSize: 44),
 ),
 ),
 ),
 );
 
}
}