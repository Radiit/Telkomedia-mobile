import 'package:flutter/material.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 183,
      left: 22,
      width: 347,
      height: 139,
      child: Card(
        elevation: 0.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Container(
          width: 347, // Specify the width
          height: 139, // Specify the height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFF5C7A),
                Color(0xFFFF314D),
              ],
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/pattern-box-kanan.png',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Transform.scale(
                  scale: 1.0,
                  child: Image.asset('assets/images/pattern-box-kiri.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
