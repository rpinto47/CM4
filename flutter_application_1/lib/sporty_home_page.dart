import 'package:flutter/material.dart';
import 'sideMenu/side_menu.dart';

class SportyHomePage extends StatefulWidget {
  const SportyHomePage({super.key});

  @override
  _SportyHomePageState createState() => _SportyHomePageState();
}

class _SportyHomePageState extends State<SportyHomePage> {
  bool _showButtons = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _toggleButtons() {
    setState(() {
      _showButtons = !_showButtons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideMenu(),
      body: Stack(
        children: [
          Container(
            height: 1500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
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
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                    Row(
                      children: [
                        const Text(
                          'Sporty',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Image.asset('assets/logo.png', width: 35),
                      ],
                    ),
                    const SizedBox(width: 24),
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
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: _toggleButtons,
                        child: Image.asset('assets/button.png', width: 100),
                      ),
                      if (_showButtons) ...[
                        const SizedBox(height: 50),
                        Wrap(
                          spacing: 20,
                          children: [
                            SizedBox(
                              width: 105,
                              height: 105,
                              child: IconButton(
                                icon: Image.asset('assets/megafone.png'),
                                iconSize: 100,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 105,
                              height: 105,
                              child: IconButton(
                                icon: Image.asset('assets/paths.png'),
                                iconSize: 100,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: IconButton(
                                icon: Image.asset('assets/medal.png'),
                                iconSize: 100,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 105,
                              height: 105,
                              child: IconButton(
                                icon: Image.asset('assets/hat.png'),
                                iconSize: 100,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/customize');
                                },
                              ),
                            ),
                            SizedBox(
                              width: 85,
                              height: 85,
                              child: IconButton(
                                icon: Image.asset('assets/flag.png'),
                                iconSize: 100,
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