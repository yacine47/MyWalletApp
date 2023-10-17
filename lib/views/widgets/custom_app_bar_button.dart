import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          FontAwesomeIcons.chartSimple,
          color: kThemeColor,
          size: 20,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          'Statistics',
          style: TextStyle(
            color: kThemeColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
