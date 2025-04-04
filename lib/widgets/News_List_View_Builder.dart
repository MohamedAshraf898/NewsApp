import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/Article_model.dart';
import 'package:news_app/services/News_Services.dart';

import 'News_List_View.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

var future;

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getnews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverFillRemaining(child: Text("Error 404"));
          } else {
            return SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            );
          }
        });
    //   return isloading
    //       ? SliverFillRemaining(
    //           child: Center(
    //             child: CircularProgressIndicator(
    //               color: Colors.black,
    //             ),
    //           ),
    //         )
    //       : articles.isNotEmpty
    //           ? NewsListView(articles: articles)
    //           : SliverFillRemaining(child: Text("Error 404"));
    // }
  }
}
