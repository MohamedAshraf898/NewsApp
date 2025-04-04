class ArticleModel {
  final String? image;
  final String title;
  final String url_page;
  final String? substring;
  ArticleModel(
      {required this.url_page,
      required this.image,
      required this.title,
      required this.substring});
  factory ArticleModel.fromjson(json) {
    return ArticleModel(
        url_page: json["url"],
        image: json["urlToImage"],
        title: json["title"],
        substring: json["description"]);
  }
}
