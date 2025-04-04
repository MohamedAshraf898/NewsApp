import 'package:flutter/material.dart';
import 'package:news_app/widgets/Category_Card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard("Health", "assets/health.avif"),
          CategoryCard("Sports", "assets/sports.avif"),
          CategoryCard("Technology", "assets/technology.jpeg"),
          CategoryCard("Business", "assets/business.avif"),
          CategoryCard("Entertainment", "assets/entertaiment.avif"),
          CategoryCard("Science", "assets/science.avif"),
          CategoryCard("General", "assets/general.avif"),
        ],
      ),
    );
  }
}
