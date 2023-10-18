import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.itemBuilder});
  final Widget? Function(BuildContext, int) itemBuilder;

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
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: itemBuilder,
          ),
        ),
      ),
    );
  }
}
