import 'package:flutter/material.dart';
import 'package:telkomedika_app/widgets/custom_icon.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Color.fromRGBO(152, 163, 179, 1),
      selectedItemColor: Color.fromRGBO(237, 28, 36, 1),
      selectedLabelStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 10,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: new Image.asset('assets/images/Home.png'),
          activeIcon: new Image.asset('assets/images/selected_Home.png'),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: new Image.asset('assets/images/dokter.png'),
          activeIcon: new Image.asset('assets/images/selected_dokter.png'),
          label: 'Dokter',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: new Image.asset('assets/images/Calendar.png'),
          activeIcon: new Image.asset('assets/images/selected_Calendar.png'),
          label: 'Reservasi',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: new Image.asset('assets/images/Document.png'),
          activeIcon: new Image.asset('assets/images/selected_Document.png'),
          label: 'Riwayat',
        ),
        //   icon: selectedIndex == 0
        //       ? const CustomIcon(imagePath: 'assets/images/selected_Home.png')
        //       : const CustomIcon(
        //           imagePath: 'assets/images/Home.png'),
        //   label: 'Beranda',
        // BottomNavigationBarItem(
        //   backgroundColor: Colors.white,
        //   icon: selectedIndex == 1
        //       ? const CustomIcon(imagePath: 'assets/images/selected_Document.png')
        //       : const CustomIcon(
        //           imagePath: 'assets/images/dokter.png'),
        //   label: 'Dokter',
        // ),
        // BottomNavigationBarItem(
        //   backgroundColor: Colors.white,
        //   icon: selectedIndex == 2
        //       ? const CustomIcon(
        //           imagePath: 'assets/images/selected_Calendar.png')
        //       : const CustomIcon(
        //           imagePath: 'assets/images/Calendar.png'),
        //   label: 'Reservasi',
        // ),
        // BottomNavigationBarItem(
        //   backgroundColor: Colors.white,
        //   icon: selectedIndex == 3
        //       ? const CustomIcon(imagePath: 'assets/images/selected_Document.png')
        //       : const CustomIcon(
        //           imagePath: 'assets/images/Document.png'),
        //   label: 'Riwayat',
        // ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}

