import 'package:flutter/material.dart';
import 'package:telkomedika_app/pages/developer_page.dart';
import 'package:telkomedika_app/pages/first_page.dart';
import 'package:telkomedika_app/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/first': (context) => FirstPage(),
          '/second': (context) => SecondPage(),
          '/developer': (context) => Developer(),
        });
  }
}
