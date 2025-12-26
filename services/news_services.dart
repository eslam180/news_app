import 'package:dio/dio.dart';
//import 'package:flutter/foundation.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServices {
  //هنا انشت اوبجكت من كلاس دايو عشان اعرف اعمل ريكويست ل api
  final Dio dio = Dio();

  Future<List<ArticleModel>> getTopHeadlineNews({required String category}) async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6d43f927fe57422bad84ff8de3c7c94a&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> data = [];

      for (var element in articles) {
        ArticleModel article = ArticleModel(
          subTitle: element["description"],
          title: element["title"],
          image: element["urlToImage"],
        );

        data.add(article);
      }
      return data;
    } on () {
      return [];
    }
  }
}
