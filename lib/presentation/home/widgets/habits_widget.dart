import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class HabitsWidget extends StatelessWidget {
  final String title;
  const HabitsWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 89,
          height: 35,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                11.0,
              ),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: blacktextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
