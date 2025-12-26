import 'package:flutter/material.dart';
import 'package:newsapp/components/card_catogry.dart';
import 'package:newsapp/models/card_model.dart';

final List<Cardmodel> data = [
  Cardmodel(cardName: "Business", cardImage: "assets/business.avif"),
  Cardmodel(cardName: "Entertainment", cardImage: "assets/entertaiment.avif"),
  Cardmodel(cardName: "Health", cardImage: "assets/health.avif"),
  Cardmodel(cardName: "Technology", cardImage: "assets/technology.jpeg"),
  Cardmodel(cardName: "Sports", cardImage: "assets/sports.avif"),
  Cardmodel(cardName: "Science", cardImage: "assets/science.avif"),
  Cardmodel(cardName: "General", cardImage: "assets/general.avif"),
];

class Listviewcard extends StatelessWidget {
  const Listviewcard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return CardCatogry(cardData: data[index]);
        },
      ),
    );
  }
}
