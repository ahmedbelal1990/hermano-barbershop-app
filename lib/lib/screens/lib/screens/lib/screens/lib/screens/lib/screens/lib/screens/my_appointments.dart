import 'package:flutter/material.dart';

class MyAppointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("مواعيدي")),
      body: Center(
        child: Text(
          "لا توجد مواعيد",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
