import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarViews extends StatelessWidget {
  const CustomAppBarViews({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(FontAwesomeIcons.arrowLeft, color: Colors.white),
        ),
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            fontSize: 21,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 8))
      ],
    );
  }
}
