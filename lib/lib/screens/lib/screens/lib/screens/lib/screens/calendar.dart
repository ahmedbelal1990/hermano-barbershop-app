import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDate = DateTime.now();
  final times = [
    "10:00",
    "11:00",
    "12:00",
    "14:00",
    "15:00",
    "16:00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اختر التاريخ والوقت")),
      body: Column(
        children: [
          SizedBox(height: 20),
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 30)),
            onDateChanged: (date) {
              setState(() {
                selectedDate = date;
              });
            },
          ),
          Divider(),
          Text("الأوقات المتاحة", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: times.length,
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    title: Text(times[i]),
                    onTap: () {
                      Navigator.pop(context, times[i]);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
