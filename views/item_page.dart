import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class ItemPage extends StatelessWidget {
  ItemPage({
    super.key,
    required this.model,
  
  });

  ArticleModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More Details",
          style: TextStyle(color: const Color.fromARGB(255, 168, 137, 11)),
        ),

        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 168, 137, 11),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 50,right: 12,left: 12),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: model.image != null
                  ? Image.network(model.image!)
                  : Image.asset("assets/istockphoto-1472933890-612x612.jpg"),
            ),
            SizedBox(height: 10),
            Text(
              // معناها انه لو ال(اي بي ااي) مرجعش صوره اعرض تكست فاضي
              model.title ?? "",
              //    maxLines: 2,
              style: TextStyle(
                //  overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              model.subTitle ?? "",
              //  maxLines: 2,
              style: TextStyle(
                // overflow: TextOverflow.ellipsis,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
