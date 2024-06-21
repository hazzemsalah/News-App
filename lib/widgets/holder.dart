// import 'package:_5_news_app/models/article_model.dart';
// import 'package:_5_news_app/services/news_service.dart';
// import 'package:_5_news_app/widgets/news_post.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';


// class NewsPostListView extends StatefulWidget {
//   const NewsPostListView({
//     super.key,
//   });

//   @override
//   State<NewsPostListView> createState() => _NewsPostListViewState();
// }

// class _NewsPostListViewState extends State<NewsPostListView> {
// List<ArticleModel> articles = [];

// bool isLoading = true;
// @override
//   void initState()  {
//     super.initState();
//     GetGeneralNews();
//   }

// Future<void> GetGeneralNews() async {
//   articles = await NewsService(dio: Dio()).GetNews();
//   setState(() {
    
//   });
//   isLoading = false;
// } 


//   @override
//   Widget build(BuildContext context) {
//     return isLoading ? SliverFillRemaining(hasScrollBody: false,child: Center(child: CircularProgressIndicator())) : SliverList(
//       delegate: SliverChildBuilderDelegate(childCount: articles.length, (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 32),
//           child:  NewsPost(article: articles[index],),
//         );
//       }),
//     );
//   }
// }