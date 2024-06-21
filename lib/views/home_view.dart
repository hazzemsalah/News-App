
import 'package:_5_news_app/widgets/categories_ListView.dart';

import 'package:_5_news_app/widgets/new_list_view_builder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              NewsListViewBuilder(category: "general",),
            ],
          ),
        ));
  }
}
