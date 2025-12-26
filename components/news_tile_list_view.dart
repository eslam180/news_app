import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/views/item_page.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12, bottom: 40),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ItemPage(model:article);
                  },
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: article.image != null
                  ? Image.network(
                      article.image!,
                      // height: 200,
                      // width: double.infinity,
                      // fit: BoxFit.cover,
                    )
                  : Image.asset("assets/istockphoto-1472933890-612x612.jpg"),
            ),
          ),
          SizedBox(height: 10),
          Text(
            // معناها انه لو ال(اي بي ااي) مرجعش صوره اعرض تكست فاضي
            article.title ?? "",
            maxLines: 2,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            article.subTitle ?? "",
            maxLines: 2,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
