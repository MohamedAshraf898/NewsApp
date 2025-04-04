import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/News_services.dart';
import 'views/HomePage.dart';

void main() {
  runApp(const MyApp());
  NewsServices(Dio()).getnews();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
