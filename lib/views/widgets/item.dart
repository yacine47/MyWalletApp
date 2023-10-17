import 'package:flutter/material.dart';

import '../../constants.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        // dense: true,
        visualDensity: const VisualDensity(horizontal: 0, vertical: -2.5),
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        leading: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Image.asset(
            image,
            width: 42,
          ),
        ),
        title: const Text(
          'Fast Food',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: const Text(
          '12 June , 2020',
          style: TextStyle(
            fontSize: 11,
            color: kSubTitle,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Text(
          '48 DZD',
          style: TextStyle(
            fontSize: 15,
            color: kThemeColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
