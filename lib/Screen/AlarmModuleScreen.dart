import 'package:app_for_my_dad/Model/cardAlarm.dart';
import 'package:app_for_my_dad/Screen/AddAlarmScreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AlarmModuleScreen extends StatefulWidget {
  const AlarmModuleScreen({Key? key}) : super(key: key);

  @override
  _AlarmModuleScreenState createState() => _AlarmModuleScreenState();
}

class _AlarmModuleScreenState extends State<AlarmModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              top(),
              Container(
                height: 300,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return card(index: index);
                  },
                  itemCount: listOfAlarm.length,
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFE7388),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => AddAlarmScreen()));
          },
          child: Icon(Icons.alarm_add),
        ));
  }

  Widget card({required int index}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xff9F9F9F)),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Switch(
                  value: listOfAlarm[index].switchCase,
                  onChanged: (value) {
                    setState(() {
                      listOfAlarm[index].switchCase = value;
                    });
                  }),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('hh:mm').format(listOfAlarm[index].time),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(listOfAlarm[index].property,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Color(0xffFE7388),
                      borderRadius: BorderRadius.circular(4)),
                  child: IconButton(
                    iconSize: 14,
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget top() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffFE7388),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Container(
                height: 24,
                width: 48,
                child: Text(
                  'Trở về',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFE7388),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        offset: Offset(0, 4))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Báo thức kế tiếp',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(DateFormat('hh:mm').format(listOfAlarm[0].time),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold)),
                          Text('18/9/2021',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  blurRadius: 8,
                                  offset: Offset(0, 4))
                            ]),
                        child: IconButton(
                            onPressed: () {},
                            iconSize: 18,
                            icon: Icon(
                              Icons.edit,
                              color: Color(0xffFE7388),
                            )))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
