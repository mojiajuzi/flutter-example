import 'package:flutter/material.dart';

class MyBottom extends StatefulWidget {
  @override
  _MyBottomState createState() => new _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  List<BottomNavigationBarItem> bottonList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.cloud),
      title: Text('Home'),
      backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(icon: Icon(Icons.launch), title: Text('Contact')),
    BottomNavigationBarItem(
        icon: Icon(Icons.laptop_mac),
        title: Text('Store'),
        backgroundColor: Colors.lightBlueAccent)
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      items: bottonList,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      currentIndex: _currentIndex,
    );
  }
}
