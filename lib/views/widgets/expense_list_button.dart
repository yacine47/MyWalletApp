import 'package:flutter/cupertino.dart';

import 'custom_button.dart';

class ExpenseListButton extends StatefulWidget {
  const ExpenseListButton({super.key});

  @override
  State<ExpenseListButton> createState() => _ExpenseListButtonState();
}

class _ExpenseListButtonState extends State<ExpenseListButton> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 44,
          crossAxisCount: 3,
          crossAxisSpacing: 16,
        ),
        itemCount: listButtonsName.length,
        itemBuilder: (context, index) => CustomButton(
          isActive: currentIndex == index,
          title: listButtonsName[index],
          onTap: () {
            currentIndex = index;
            setState(() {});
          },
        ),
      ),
    );

    // Row(
    //   children: [
    //     CustomButton(
    //       isActive: true,
    //       title: 'Weekly',
    //       onTap: () {},
    //     ),
    //     const SizedBox(width: 16),
    //     CustomButton(
    //       isActive: true,
    //       title: 'Monthly',
    //       onTap: () {},
    //     ),
    //     const SizedBox(width: 16),
    //     CustomButton(
    //       isActive: true,
    //       title: '6 Months',
    //       onTap: () {},
    //     ),
    //   ],
    // );
  }

  List<String> listButtonsName = ['Weekly', 'Monthly', '6 Months'];
}
