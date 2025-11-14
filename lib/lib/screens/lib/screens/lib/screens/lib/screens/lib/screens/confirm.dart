import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  final String barber;
  final String service;
  final String date;
  final String time;

  ConfirmScreen({
    required this.barber,
    required this.service,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تأكيد الحجز")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("الخدمة: $service", style: TextStyle(fontSize: 20)),
            Text("الحلاق: $barber", style: TextStyle(fontSize: 20)),
            Text("التاريخ: $date", style: TextStyle(fontSize: 20)),
            Text("الوقت: $time", style: TextStyle(fontSize: 20)),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                child: Text("تأكيد"),
                onPressed: () {
                  // لاحقًا نربطه بقاعدة البيانات
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
