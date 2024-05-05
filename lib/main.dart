import 'package:flutter/material.dart';

import 'package:mind_self_app/presentation/home/pages/splash_page.dart';

import 'package:mind_self_app/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: SplashPage(),
    );
  }
}
