import 'package:flutter/material.dart';
import 'package:news_app/models/Article_model.dart';
import 'package:news_app/widgets/Newstile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: Newstile(
              model: articles[index],
            ),
          ); // Return an instance of Newstile or the desired item widget
        },
        childCount: articles.length, // Number of items in the list
      ),
    );
  }
}
