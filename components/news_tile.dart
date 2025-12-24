
import 'package:flutter/material.dart';
import 'package:newsapp/components/newsTile.ListView.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_services.dart';

class NewsTile extends StatefulWidget {
  const NewsTile({super.key});

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  List<ArticleModel> article = [];
  bool isloading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {


    article = await NewsServices().getNews();
   isloading = false;
    setState(() {
   
    });
  }


  @override
  Widget build(BuildContext context) {
    return isloading
        ? SliverFillRemaining(
          hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(color: Colors.amber),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: article.length, (
              context,
              index,
            ) {
              return NewsTileListView(article: article[index]);
            }),
          );
  }
}
// ListView.builder(
//     shrinkWrap: true,
//     physics: NeverScrollableScrollPhysics(),
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return NewsTileListView();
        
//       },




//     );
