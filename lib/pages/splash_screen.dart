import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'main_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMainPage();
  }

  _navigateToMainPage() async {
    await Future.delayed(Duration(milliseconds: 5000), () {}); 
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center(
        child: Lottie.network(
                 'https://lottie.host/59a4c81f-0f73-4fab-9c0e-abb28f126a2c/UYj0LlMH0m.json',
          width: 300, 
          height: 300, 
        ),
      ),
    );
  }
}
