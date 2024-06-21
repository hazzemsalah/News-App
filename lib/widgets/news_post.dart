import 'package:_5_news_app/models/article_model.dart';
import 'package:flutter/material.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              article.image ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvCd72A65n2bOUMjq4IhbFW982v7c_LCJW8Q&usqp=CAU",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.subtitle??"",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
