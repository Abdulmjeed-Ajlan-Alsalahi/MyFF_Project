import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/fifth_lec.dart';
import 'package:myfirst_flutter_project/first_lec.dart';
import 'package:myfirst_flutter_project/fourth_lec.dart';
import 'package:myfirst_flutter_project/login.dart';
import 'package:myfirst_flutter_project/second_lec.dart';
import 'package:myfirst_flutter_project/third_lec.dart';

void main() {
  runApp( MyHomePage());
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, this.name=""});
String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WelCome You are in The Home Page"),
      backgroundColor: Colors.blueAccent,),
      body: Center(child: const Text("here you find every thing you search about")),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 203, 250, 165),
        child: Column(
          children: [
            const DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 203, 250, 165),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/city.jpg"),
                    radius: 50,
                  ),
                  Divider(indent: 60,endIndent:
                   60,height: 3,color: Colors.green,
                   thickness: 2,),
                  Text("Abdulmjeed_Ajlan.com",
                  style:TextStyle(fontSize: 20) ,)
                ],
            )),
           Expanded(child: ListView(
            padding: EdgeInsets.zero,

            children: [
               
           ListTileMetho(context,"The Home Page",const Icon(Icons.home),MyHomePage()),
           ListTileMetho(context,"Login Page",const Icon(Icons.login),const Login()),
           ListTileMetho(context,"First Lecture H.W",const Icon(Icons.book),const FirstLec()),
           ListTileMetho(context,"Second Lecture H.W",const Icon(Icons.book),SecondLec()),
           ListTileMetho(context,"Third Lecture H.W",const Icon(Icons.book),ThirdLec()),
           ListTileMetho(context,"Fourth Lecture H.W",const Icon(Icons.book),FourthLec()),
           ListTileMetho(context,"Fifth Lecture H.W",const Icon(Icons.book),FifthLec()),
           
            ],
           ))
          ],
        ),
      ),
    );
  }

  ListTile ListTileMetho(BuildContext context,title,icon, page) {
    return ListTile(
              title: Text(title),
            //  subtitle: Text("click"),
              tileColor: Colors.blueAccent,
              leading: icon,
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap:() {
                Navigator.push(context,
                 MaterialPageRoute(
                  builder: (context) => page,
                  ));
              },

              
          );
  }
  }
