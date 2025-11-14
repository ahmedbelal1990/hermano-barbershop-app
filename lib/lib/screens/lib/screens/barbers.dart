import 'package:flutter/material.dart';

class BarbersScreen extends StatelessWidget {
  final barbers = [
    {"name": "Ahmed", "image": "assets/images/barber1.jpg"},
    {"name": "Hermano", "image": "assets/images/barber2.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اختر الحلاق")),
      body: ListView.builder(
        itemCount: barbers.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(barbers[index]["image"]!),
              ),
              title: Text(barbers[index]["name"]!),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
