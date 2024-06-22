// resources_page.dart
import 'package:flutter/material.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Recursos',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF00D6A3),
      ),
      body: const Center(
        child: Text(
          'Resources Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
