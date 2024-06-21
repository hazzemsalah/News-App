import 'package:_5_news_app/models/article_model.dart';
import 'package:_5_news_app/services/news_service.dart';
import 'package:_5_news_app/widgets/news_post_list_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}
var future;
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
@override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).GetNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsPostListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: Text("oops there is an Erorr , Try later ..")),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
