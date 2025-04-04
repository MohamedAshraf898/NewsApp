import 'package:flutter/material.dart';
import 'package:news_app/views/Category_View.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryCard(String this.textchild, String this.bgimage);
  String textchild;
  String bgimage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8, top: 10),
        child: Container(
          height: 110,
          width: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(bgimage),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              textchild,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
