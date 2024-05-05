// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mind_self_app/shared/theme.dart';

import '../widgets/container_line.dart';
import '../widgets/habits_widget.dart';

class HabitPage extends StatelessWidget {
  const HabitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Habits",
                style: whitetextStyle.copyWith(
                  fontSize: 31.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HabitsWidget(
                      title: 'All',
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    HabitsWidget(
                      title: 'Healthy',
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    HabitsWidget(
                      title: 'Focus',
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    HabitsWidget(
                      title: 'Savings',
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    HabitsWidget(
                      title: 'Sleep',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 4.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: gray28Color,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ContainerLine(
              image: 'assets/icon_cloud.png',
              name: 'Aytime',
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Image.asset(
                    "assets/spend_big.png",
                    width: 340.0,
                    height: 141.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Image.asset(
                    "assets/drink_big.png",
                    width: 340.0,
                    height: 141.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
