// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:mind_self_app/shared/theme.dart';

import '../widgets/container_line.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Hello Hafizh 👋",
                    style: whitetextStyle.copyWith(
                      fontSize: 16.0,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    "Manage your daily\ntask",
                    style: whitetextStyle.copyWith(
                      fontSize: 31.0,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/control.png",
                        width: 128.0,
                        height: 182.0,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/check.png",
                              width: 201.0,
                              height: 81.0,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Image.asset(
                              "assets/set.png",
                              width: 201.0,
                              height: 81.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: whitetextStyle.copyWith(
                          fontSize: 25.0,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        "See all",
                        style: secondaryktextStyle.copyWith(
                          fontSize: 16.0,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            ContainerLine(
              image: "assets/icon_cloud.png",
              name: 'Anytime',
            ),
            const SizedBox(
              height: 24.0,
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
            const SizedBox(
              height: 24.0,
            ),
            ContainerLine(
              image: "assets/icon_sun.png",
              name: 'Morning',
            ),
            const SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Image.asset(
                    "assets/sleep.png",
                    width: 345.0,
                    height: 74.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Image.asset(
                    "assets/set_3.png",
                    width: 345.0,
                    height: 74.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.dashboard), label: 'ini menu 1'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.dashboard), label: 'ini menu 2'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.dashboard), label: 'ini menu 3'),
        ],
      ),
    );
  }
}
