import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  const CardListItem({
    super.key,
    required this.child,
    this.isTransparent = false,
  });
  final Widget child;
  final bool isTransparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: isTransparent == false
            ? [
                const BoxShadow(
                    blurRadius: 20,
                    color: Color.fromARGB(20, 0, 0, 0),
                    offset: Offset(2.0, 4.0),
                    blurStyle: BlurStyle.normal),
              ]
            : [],
      ),
      child: Card(
        shadowColor: Colors.transparent,
        color: isTransparent == false ? Colors.white : Colors.transparent,
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
