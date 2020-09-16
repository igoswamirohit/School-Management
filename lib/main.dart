import 'dart:ui';

import 'package:flutter/material.dart';
import './home.dart';
import './calendar.dart';

void main() {
  runApp(SchoolManagement());
}

class SchoolManagement extends StatefulWidget {
  @override
  _SchoolManagementState createState() => _SchoolManagementState();
}

class _SchoolManagementState extends State<SchoolManagement> {
  int _selectedIndex = 0;
  final List pages = [
    HomePage(),
    null,
    null,
    CalendarPage(),
    null,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0XFFF9F9FB),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart_outlined), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.done), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), title: Text("")),
          ],
        ),
        body: pages[_selectedIndex],
      ),
    );
  }
}
