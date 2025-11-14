import 'package:flutter/material.dart';
import 'services.dart';
import 'barbers.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hermano Barbershop"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("اختر الخدمة"),
            trailing: Icon(Icons.cut),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ServicesScreen(),
              ));
            },
          ),
          ListTile(
            title: Text("اختر الحلاق"),
            trailing: Icon(Icons.person),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => BarbersScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
