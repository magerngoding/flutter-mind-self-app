// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mind_self_app/presentation/home/widgets/container_line.dart';
import 'package:mind_self_app/shared/theme.dart';

import '../widgets/date_widget.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Febuary 2024",
                      style: whitetextStyle.copyWith(
                        fontSize: 25.0,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      width: 9.0,
                    ),
                    Image.asset(
                      "assets/icon_arrow_down.png",
                      width: 12.0,
                      height: 6.0,
                      fit: BoxFit.cover,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DateWidget(
                        day: 'Sat',
                        date: 17,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Sun',
                        date: 18,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Mon',
                        date: 19,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Tu',
                        date: 20,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Wed',
                        date: 21,
                        isActive: true,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Thu',
                        date: 22,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Fri',
                        date: 23,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Sat',
                        date: 24,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Sun',
                        date: 25,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Mon',
                        date: 26,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Tu',
                        date: 27,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DateWidget(
                        day: 'Wed',
                        date: 28,
                        isActive: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                  "assets/drink.png",
                  width: 345.0,
                  height: 74.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Image.asset(
                  "assets/spend.png",
                  width: 345.0,
                  height: 74.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
