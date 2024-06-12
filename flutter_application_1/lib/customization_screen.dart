import 'package:flutter/material.dart';

class CustomizationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sporty'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Customize',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  _buildCustomizationItem('assets/headphones.png'),
                  _buildCustomizationItem('assets/cap.png'),
                  _buildCustomizationItem('assets/glasses.png', selected: true),
                  _buildCustomizationItem('assets/watch.png'),
                  _buildCustomizationItem('assets/helmet.png'),
                  _buildCustomizationItem('assets/sunglasses.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomizationItem(String assetPath, {bool selected = false}) {
    return Card(
      elevation: selected ? 10 : 2,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: selected ? Colors.blue : Colors.transparent,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(assetPath),
      ),
    );
  }
}
