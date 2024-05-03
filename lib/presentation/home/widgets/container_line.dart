import 'package:flutter/material.dart';
import 'package:mind_self_app/shared/theme.dart';

class ContainerLine extends StatelessWidget {
  final String image;
  final String name;
  const ContainerLine({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 32.0,
      decoration: BoxDecoration(
        color: secondaryColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 23.0,
                height: 18.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                name,
                style: blacktextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
