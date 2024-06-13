import 'package:flutter/material.dart';

class SportyHomePage extends StatefulWidget {
  @override
  _SportyHomePageState createState() => _SportyHomePageState();
}

class _SportyHomePageState extends State<SportyHomePage> {
  bool _showButtons = false;

  void _toggleButtons() {
    setState(() {
      _showButtons = !_showButtons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main content
          Column(
            children: [
              // App bar
              Container(
                color: Colors.teal,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: Colors.white),
                    Row(
                      children: [
                        Text(
                          'Sporty',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset('assets/logo.png', width: 35),
                      ],
                    ),
                    SizedBox(width: 24), 
                  ],
                ),
              ),
              // Tiger and buttons
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/chita.png', width: 350), 
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: _toggleButtons,
                        child: Image.asset('assets/button.png', width: 100),
                      ),
                      if (_showButtons) ...[
                        SizedBox(height: 20),
                        Wrap(
                          spacing: 20,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: IconButton(
                                icon: Image.asset('assets/megafone.png'),
                                iconSize: 80,
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              child: IconButton(
                                icon: Image.asset('assets/paths.png'),
                                iconSize: 80,
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              child: IconButton(
                                icon: Image.asset('assets/medal.png'),
                                iconSize: 80,
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              child: IconButton(
                                icon: Image.asset('assets/flag.png'),
                                iconSize: 80,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
