import 'package:flutter/material.dart';
import 'package:newsapp/components/news_list_view_builder.dart';

class CatogryPage extends StatefulWidget {
  const CatogryPage({super.key, required this.category});
  final String category;

  @override
  State<CatogryPage> createState() => _CatogryPageState();
}

class _CatogryPageState extends State<CatogryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: const Color.fromARGB(255, 168, 137, 11),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            widget.category,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 168, 137, 11),
            ),
          ),
        ),

        body: CustomScrollView(
          slivers: [NewslistViewBuilder(category: widget.category)],
        ),
      ),
    );
  }
}
