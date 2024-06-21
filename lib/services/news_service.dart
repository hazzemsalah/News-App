import 'package:_5_news_app/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future <List<ArticleModel>> GetNews({required String category}) async {
    try {
  Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=71c9198b9a644aba93104d4a875134ab&category=$category");
  Map<String,dynamic> JsonData = response.data;
  List<dynamic> articles = JsonData["articles"];
  
  List<ArticleModel> articleModelList = [];
  
  for (var mkal in articles) {
    ArticleModel article =ArticleModel(image: mkal["urlToImage"], title: mkal["title"], subtitle: mkal["description"]);
    articleModelList.add(article);
  }
  return articleModelList;
} catch (e) {
  return [];
}
    }
  }
