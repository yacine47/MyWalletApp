import 'package:hive/hive.dart';
import 'package:my_wallet_app/models/category_model.dart';

part 'expense_model.g.dart';

@HiveType(typeId: 0)
class ExpenseModel extends HiveObject {
  @HiveField(0)
  final double price;
  @HiveField(1)
  final CategoryModel category;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String date;

  ExpenseModel({
    required this.category,
    required this.date,
    required this.price,
    required this.description,
  });
}
