import 'package:my_wallet_app/models/category_model.dart';

class ExpenseModel {
  final CategoryModel category;
  final String date;
  final double price;
  final String description;

  ExpenseModel({
    required this.category,
    required this.date,
    required this.price,
    required this.description,
  });
}
