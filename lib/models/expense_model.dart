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

final List<CategoryModel> categories = [
  CategoryModel(
    title: 'Food',
    image: 'assets/images/Icons/icons8-fast-food-96.png',
  ),
  CategoryModel(
    title: 'Clothes',
    image: 'assets/images/Icons/icons8-vêtements-96.png',
  ),
  CategoryModel(
    title: 'Grocery',
    image: 'assets/images/Icons/icons8-grocery-96.png',
  ),
  CategoryModel(
    title: 'Tax',
    image: 'assets/images/Icons/icons8-impôts-96.png',
  ),
  CategoryModel(
    title: 'Rent',
    image: 'assets/images/Icons/icons8-vente-immobilière-96.png',
  ),
  CategoryModel(
    title: 'Movie',
    image: 'assets/images/Icons/icons8-popcorn-96.png',
  ),
  CategoryModel(
    title: 'Car',
    image: 'assets/images/Icons/icons8-car-96.png',
  ),
  CategoryModel(
    title: 'Phone',
    image: 'assets/images/Icons/icons8-phone-96.png',
  ),
  CategoryModel(
    title: 'Travel',
    image: 'assets/images/Icons/icons8-airplane-96.png',
  ),
  CategoryModel(
    title: 'Book',
    image: 'assets/images/Icons/icons8-book-shelf-96.png',
  ),
  CategoryModel(
    title: 'Study',
    image: 'assets/images/Icons/icons8-study-96.png',
  ),
  CategoryModel(
    title: 'Sport',
    image: 'assets/images/Icons/icons8-sport-96.png',
  ),
  CategoryModel(
    title: 'Pet',
    image: 'assets/images/Icons/icons8-pet-96.png',
  ),
];
