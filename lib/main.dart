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
          title: const Text("Login Button Animation"),
          centerTitle: true,
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
