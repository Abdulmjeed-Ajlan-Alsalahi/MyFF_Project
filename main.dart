import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/home.dart';

void main(){
  runApp(Myhw());
}

class Myhw extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my flutter',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: SafeArea(child: MyHomePage()),
    );
  }
}