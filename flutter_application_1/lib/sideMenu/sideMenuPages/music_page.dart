// music_page.dart
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Center(
          child: Text(
            'Vibração',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF00D6A3),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text(
          'Music Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
