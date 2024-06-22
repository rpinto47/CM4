// help_page.dart
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Ajuda',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF00D6A3),
      ),
      body: const Center(
        child: Text(
          'Help Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
