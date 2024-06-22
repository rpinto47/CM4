import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'sporty_home_page.dart';
import 'customization_screen.dart';
import 'createAccount_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home', 
      routes: {

        '/login': (context) => const LoginScreen(), 
        '/home': (context) => const SportyHomePage(),
        '/customize': (context) => const CustomizationScreen(),
        '/createAccount': (context) => CreateAccountScreen(),
      },
    );
  }
}
