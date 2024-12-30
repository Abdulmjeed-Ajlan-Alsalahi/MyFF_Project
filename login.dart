import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("You are in The Login Page"),
      backgroundColor: const Color.fromARGB(255, 210, 188, 248),
      leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                  (route) => false);
            },
            icon: const Icon(Icons.home)),
      ),
    );
  }
}