import 'package:_5_news_app/models/article_model.dart';

import 'package:_5_news_app/widgets/news_post.dart';

import 'package:flutter/material.dart';


class NewsPostListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsPostListView({required this.articles});

  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: NewsPost(
                  article: articles[index],
                ),
              );
            }),
          );
  }
}
