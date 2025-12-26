import 'package:flutter/material.dart';
import 'package:newsapp/components/news_tile_list_view.dart';
import 'package:newsapp/models/article_model.dart';


class NewsTile extends StatelessWidget {
   NewsTile({super.key,required this.article});





  List<ArticleModel> article = [];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: article.length, (
        context,
        index,
      ) {
        return NewsTileListView(article: article[index]);
      }),
    );
  }
}
