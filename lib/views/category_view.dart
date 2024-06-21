import 'package:_5_news_app/widgets/new_list_view_builder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.only(left: 5, right: 5,top: 5),
        child: CustomScrollView(
          slivers: [NewsListViewBuilder(
            category: category,
          )],
        ),
      )
    );
  }
}
