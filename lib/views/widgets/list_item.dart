import 'package:flutter/material.dart';

import 'item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Color.fromARGB(255, 240, 240, 240),
          offset: Offset(2.0, 4.0),
        ),
      ]),
      child: Card(
        shadowColor: Colors.transparent,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              Item(
                image: 'assets/images/Icons/icons8-fast-food-96.png',
              ),
              Item(
                image: 'assets/images/Icons/icons8-vêtements-96.png',
              ),
              Item(
                image: 'assets/images/Icons/icons8-book-shelf-96.png',
              ),
              Item(
                image: 'assets/images/Icons/icons8-book-shelf-96.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
