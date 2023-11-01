import 'package:hive/hive.dart';

part 'category_model.g.dart';

@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String image;

  CategoryModel({
    required this.title,
    required this.image,
  });
}
