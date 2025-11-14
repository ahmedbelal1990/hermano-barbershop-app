import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  final services = [
    {"name": "قص شعر", "price": "25€"},
    {"name": "حلاقة دقن", "price": "15€"},
    {"name": "صبغة", "price": "40€"},
    {"name": "تنظيف بشرة", "price": "30€"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اختر الخدمة")),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(services[index]["name"]!),
              subtitle: Text(services[index]["price"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // لاحقًا سنربطه بصفحة اختيار الحلاق ثم الوقت
              },
            ),
          );
        },
      ),
    );
  }
}
