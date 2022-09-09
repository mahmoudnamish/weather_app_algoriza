import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/text_manager.dart';

class BoardingModele {
  final String image;
  final String title;
  final String body;
  BoardingModele(
      {required this.image, required this.title, required this.body});
}

Widget bordinditem(BoardingModele modele) =>
    Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Expanded(
          child: Image(
        image: AssetImage('${modele.image}'),
        width: 300,
        height: 300,
      )),
      Text(
        '${modele.title}',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        '${modele.body}',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
      ),
    ]);

List<BoardingModele> modele = [
  BoardingModele(
      image: ImageAssets.onBoardingLogo1,
      title: TextManager.onBoardingTitleTextOne,
      body: TextManager.onBoardingBodyTextOne),
  BoardingModele(
      image: ImageAssets.onBoardingLogo2,
      title: TextManager.onBoardingTitleTextTwo,
      body: TextManager.onBoardingBodyTextTwo),
];
