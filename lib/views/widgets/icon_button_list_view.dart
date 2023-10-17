import 'package:flutter/material.dart';

class IconButtonListView extends StatelessWidget {
  const IconButtonListView({
    super.key,
    required this.itemBuilder,
  });
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      // width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
