import 'package:_5_news_app/models/category_model.dart';
import 'package:_5_news_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  List<CategoryModel> categories = const [
    CategoryModel(image: "assets/business.avif", name: "Business"),
    CategoryModel(image: "assets/entertaiment.avif", name: "entertainment"),
    CategoryModel(image: "assets/general.avif", name: "general"),
    CategoryModel(image: "assets/health.avif", name: "health"),
    CategoryModel(image: "assets/science.avif", name: "science"),
    CategoryModel(image: "assets/sports.avif", name: "sports"),
    CategoryModel(image: "assets/technology.jpeg", name: "technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index],);
          }),
    );
  }
}
