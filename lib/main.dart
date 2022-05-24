import 'package:flutter/material.dart';
import 'package:loginbutton_animation/screens/login_screen.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "LOGIN BUTTON ANIMATION",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
