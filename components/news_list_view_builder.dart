import 'package:flutter/material.dart';
import 'package:newsapp/components/news_tile.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_services.dart';

class NewslistViewBuilder extends StatefulWidget {
  const NewslistViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewslistViewBuilder> createState() => _NewslistViewBuilderState();
}

class _NewslistViewBuilderState extends State<NewslistViewBuilder> {
  List<ArticleModel> article = [];

  dynamic future;
  @override
  void initState() {
    super.initState();
    future = NewsServices().getTopHeadlineNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTile(article: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text(
                "OOPS there was an error, please try later",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(color: Colors.amber),
            ),
          );
        }
      },
    );
  }
}
