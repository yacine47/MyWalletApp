import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_wallet_app/cubits/add_expense/add_expense_cubit.dart';

import '../../models/category_model.dart';
import '../../models/expense_model.dart';
import 'category_item.dart';

class CategoryGridView extends StatefulWidget {
  const CategoryGridView({super.key});

  @override
  State<CategoryGridView> createState() => _CategoryGridViewState();
}

class _CategoryGridViewState extends State<CategoryGridView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Center(
        child: GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 24,
            childAspectRatio: 0.8,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
              BlocProvider.of<AddExpenseCubit>(context).category =
                  categories[currentIndex];
            },
            child: CategoryItem(
              isSelected: currentIndex == index,
              category: categories[index],
            ),
          ),
        ),
      ),
    );
  }
}
