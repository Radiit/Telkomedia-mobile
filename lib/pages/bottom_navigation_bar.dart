import 'package:flutter/material.dart';
import 'package:telkomedika_app/custom_icon.dart';

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
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: selectedIndex == 0
              ? CustomIcon(imagePath: 'assets/images/icons/selected_home.png')
              : CustomIcon(imagePath: 'assets/images/icons/unselected_home.png'),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: selectedIndex == 1
              ? CustomIcon(imagePath: 'assets/images/icons/selected_dokter.png')
              : CustomIcon(imagePath: 'assets/images/icons/unselected_dokter.png'),
          label: 'Dokter',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: selectedIndex == 2
              ? CustomIcon(imagePath: 'assets/images/icons/selected_calender.png')
              : CustomIcon(imagePath: 'assets/images/icons/unselected_calender.png'),
          label: 'Reservasi',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: selectedIndex == 3
              ? CustomIcon(imagePath: 'assets/images/icons/selected_news.png')
              : CustomIcon(imagePath: 'assets/images/icons/unselected_news.png'),
          label: 'Riwayat',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: selectedIndex == 4
              ? CustomIcon(imagePath: 'assets/images/icons/selected_profile.png')
              : CustomIcon(imagePath: 'assets/images/icons/unselected_profile.png'),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
