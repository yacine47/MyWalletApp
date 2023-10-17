import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  const CardListItem({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
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
          padding: const EdgeInsets.symmetric(
            vertical: 18,
          ),
          child: child,
        ),
      ),
    );
  }
}
