// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mind_self_app/presentation/home/pages/habit_page.dart';
import 'package:mind_self_app/presentation/home/pages/home_page.dart';
import 'package:mind_self_app/presentation/home/pages/profile.dart';
import 'package:mind_self_app/presentation/home/pages/schedule_page.dart';

import '../../../shared/theme.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final List<Widget> _childern = [
    HomePage(),
    SchedulePage(),
    HabitPage(),
    ProfilePage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: _childern[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: primaryColor,
        backgroundColor: Color(0xff282828),
        unselectedIconTheme: IconThemeData(color: whiteColor),
        selectedIconTheme: IconThemeData(color: secondaryColor),
        unselectedItemColor: Colors.white,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Habit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
