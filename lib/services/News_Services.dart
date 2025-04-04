import 'package:dio/dio.dart';
import 'package:news_app/models/Article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getnews() async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=f3869b527e7a4dcd9fe80032c4eab574");
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata["articles"];
      List<ArticleModel> listofarticle = [];
      for (var article in articles) {
        ArticleModel model = ArticleModel.fromjson(article);
        listofarticle.add(model);
      }
      return listofarticle;
      // ignore: unused_catch_clause
    } on Exception catch (e) {
      return [];
    }
  }
}
