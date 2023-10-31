import 'package:flutter/material.dart';

import '../../constants.dart';

class CircleBackground extends StatelessWidget {
  const CircleBackground(
      {super.key, required this.child, this.paddingHorizontal = 20});
  final Column child;
  final double paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const Positioned(
          top: -1600,
          child: CircleAvatar(
            backgroundColor: kThemeColor,
            radius: 1000,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ],
    );
  }
}
