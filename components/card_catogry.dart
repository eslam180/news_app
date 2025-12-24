import 'package:flutter/material.dart';
import 'package:newsapp/models/card_model.dart';

class CardCatogry extends StatelessWidget {
  const CardCatogry({super.key,required this.cardData});
   final Cardmodel cardData;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 5,right: 8),
      child: Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(cardData.cardImage),
            ),
          ),
          child:Center(
            child: Text(
              cardData.cardName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
    );
  }
}