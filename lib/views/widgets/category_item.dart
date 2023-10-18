import 'package:flutter/material.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.category, this.isSelected = false});
  final CategoryModel category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected == false
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor: Colors.black.withOpacity(0.038),
                child: Image.asset(
                  category.image,
                  width: 38,
                ),
              ),
              Text(
                category.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor: kThemeColor.withOpacity(0.45),
                child: Image.asset(
                  category.image,
                  width: 38,
                ),
              ),
              Text(
                category.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          );
  }
}
