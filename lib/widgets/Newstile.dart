import 'package:flutter/material.dart';
import 'package:news_app/models/Article_model.dart';
import 'package:news_app/views/Web_View.dart';

// ignore: must_be_immutable
class Newstile extends StatelessWidget {
  Newstile({super.key, required this.model});
  ArticleModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return WebViewPage(pageUrl: model.url_page);
            }));
          },
          child: ClipRRect(
            child: Image.network(
              model.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return WebViewPage(pageUrl: model.url_page);
            }));
          },
          child: Text(
            model.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return WebViewPage(pageUrl: model.url_page);
            }));
          },
          child: Text(
            model.substring ?? " ",
            maxLines: 2,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        )
      ],
    );
  }
}
