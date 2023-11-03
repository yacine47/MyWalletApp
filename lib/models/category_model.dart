import 'package:hive/hive.dart';

part 'category_model.g.dart';

@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final bool isAsset;

  CategoryModel({
    required this.isAsset,
    required this.title,
    required this.image,
  });
}

final List<CategoryModel> categories = [
  CategoryModel(
    isAsset: false,
    title: 'Food',
    image: 'assets/images/Icons/icons8-fast-food-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Clothes',
    image: 'assets/images/Icons/icons8-vêtements-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Grocery',
    image: 'assets/images/Icons/icons8-grocery-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Tax',
    image: 'assets/images/Icons/icons8-impôts-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Rent',
    image: 'assets/images/Icons/icons8-vente-immobilière-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Movie',
    image: 'assets/images/Icons/icons8-popcorn-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Car',
    image: 'assets/images/Icons/icons8-car-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Phone',
    image: 'assets/images/Icons/icons8-phone-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Travel',
    image: 'assets/images/Icons/icons8-airplane-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Book',
    image: 'assets/images/Icons/icons8-book-shelf-96.png',
  ),
  CategoryModel(
    isAsset: true,
    title: 'Study',
    image: 'assets/images/Icons/icons8-study-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Sport',
    image: 'assets/images/Icons/icons8-sport-96.png',
  ),
  CategoryModel(
    isAsset: false,
    title: 'Pet',
    image: 'assets/images/Icons/icons8-pet-96.png',
  ),
];
