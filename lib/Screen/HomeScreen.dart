import 'package:app_for_my_dad/Screen/AlarmModuleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          alignment: Alignment.topCenter,
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: cardItem(
                    title: 'Báo thức',
                    subtitle: 'Nhấp vào để đặt báo thức',
                    color1: Color(0xffFFD8DE),
                    color2: Color(0xffFE7388),
                    page: AlarmModuleScreen()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: cardItem(
                    title: 'Thay đổi hình nền',
                    subtitle: 'Nhấp để thay đổi hình nền',
                    color1: Color(0xff96FCAB),
                    color2: Color(0xff1EC39F),
                    page: AlarmModuleScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardItem(
      {required String title,
      required String subtitle,
      required Color color1,
      required Color color2,
      required Widget page}) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: Container(
        width: 156,
        height: 218,
        child: Column(
          children: [
            Container(
              height: 146,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  gradient: RadialGradient(
                    colors: [color1, color2],
                  )),
              child: Placeholder(),
            ),
            Container(
              height: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Title
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                    //Subtitle
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
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
