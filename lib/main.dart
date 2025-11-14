import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(HermanoApp());
}

class HermanoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hermano Barbershop',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Color(0xFF3E2723),
        fontFamily: 'Arial',
      ),
    );
  }
}
