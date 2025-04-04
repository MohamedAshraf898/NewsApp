import 'package:flutter/material.dart';
import 'package:news_app/widgets/News_List_View_Builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [NewsListViewBuilder()]));
  }
}
