import 'package:app_for_my_dad/Screen/HomeScreen.dart';
import 'package:app_for_my_dad/Screen/SettingScreen.dart';
import 'package:flutter/material.dart';

class HomePageManager extends StatefulWidget {
  const HomePageManager({Key? key}) : super(key: key);

  @override
  _HomePageManagerState createState() => _HomePageManagerState();
}

class _HomePageManagerState extends State<HomePageManager> {
  final tabs = [HomeScreen(), SettingScreen()];
  late int _currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Cài đặt')
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
