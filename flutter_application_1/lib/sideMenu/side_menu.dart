// side_menu.dart
import 'package:flutter/material.dart';
import 'sideMenuPages/audio_settings.dart';
import 'sideMenuPages/music_page.dart';
import 'sideMenuPages/vibration_page.dart';
import 'sideMenuPages/resources_page.dart';
import 'sideMenuPages/help_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF00D6A3),
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              color: const Color(0xFF00D6A3),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Color(0xFF00D6A3),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Username',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding: const EdgeInsets.all(0),
                  children: <Widget>[
                    _createDrawerItem(
                      icon: Icons.volume_up,
                      text: 'Áudio',
                      onTap: () => _navigateTo(context, const AudioSettingsPage()),
                    ),
                    _createDrawerItem(
                      icon: Icons.music_note,
                      text: 'Música',
                      onTap: () => _navigateTo(context, const MusicPage()),
                    ),
                    _createDrawerItem(
                      icon: Icons.vibration,
                      text: 'Vibração',
                      onTap: () => _navigateTo(context, const VibrationPage()),
                    ),
                    _createDrawerItem(
                      icon: Icons.book,
                      text: 'Recursos',
                      onTap: () => _navigateTo(context, const ResourcesPage()),
                    ),
                    _createDrawerItem(
                      icon: Icons.help,
                      text: 'Ajuda',
                      onTap: () => _navigateTo(context, const HelpPage()),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00D6A3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the drawer
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.of(context).pop(); // Close the drawer
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF00D6A3)),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      onTap: onTap,
    );
  }
}
