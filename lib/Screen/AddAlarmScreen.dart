import 'package:app_for_my_dad/Model/cardAlarm.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddAlarmScreen extends StatefulWidget {
  const AddAlarmScreen({Key? key}) : super(key: key);

  @override
  _AddAlarmScreenState createState() => _AddAlarmScreenState();
}

class _AddAlarmScreenState extends State<AddAlarmScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: TextButton(
          child: Text(
            'Trở về',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Tạo báo thức',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: screenSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat('hh:mm').format(DateTime.now()),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent),
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFF4F6)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Color(0xffFE7388),
                      ),
                      Text(
                        'Chọn giờ báo thức',
                        style: TextStyle(color: Color(0xffFE7388)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
