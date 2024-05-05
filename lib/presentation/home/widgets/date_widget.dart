import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class DateWidget extends StatelessWidget {
  final bool isActive;
  final String day;
  final int date;
  const DateWidget({
    Key? key,
    required this.isActive,
    required this.day,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 10.0,
        ),
        Text(
          day,
          style: whitetextStyle.copyWith(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Container(
          width: 32,
          height: 32.0,
          decoration: BoxDecoration(
            color: gray28Color,
            borderRadius: BorderRadius.all(
              Radius.circular(
                50,
              ),
            ),
          ),
          child: Center(
            child: Text(
              date.toString(),
              style: whitetextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: isActive ? secondaryColor : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
