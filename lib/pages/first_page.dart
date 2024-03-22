import 'package:flutter/material.dart';
import 'package:telkomedika_app/pages/home_page.dart';
import 'package:telkomedika_app/pages/profil_page.dart';
import 'package:telkomedika_app/pages/setting_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  final List _pages = [
    HomePage(),
    ProfilPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: _pages[2],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
