import 'package:flutter/material.dart';
import 'package:telkomedika_app/widgets/bottom_navigation_bar.dart';
import 'home_page.dart';
import 'doctor_page.dart';
import 'reservation_history_page.dart';
import 'appointment_form_page.dart'; 

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomePage(),
    DoctorPage(),
    Placeholder(), // Use a placeholder for Reservasi
    ReservationHistoryPage(), // Use the ReservationHistoryPage
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AppointmentFormPage(
            doctor: {
              'name': "dr. Budi Raharja",
              'department': "Poli Umum",
              'rating': 4.8,
              'imagePath': 'assets/images/doctor1.png',
              'poli': 'Poli Umum'
            },
          ),
        ),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
