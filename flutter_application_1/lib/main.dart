import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'sporty_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', // Define a rota inicial como o login
      routes: {
        '/login': (context) => LoginScreen(), // Define a rota para a tela de login
        '/home': (context) => SportyHomePage(), // Define a rota para a tela principal
      },
    );
  }
}
