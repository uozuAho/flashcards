import 'package:flashcards/business/deck_storage.dart';
import 'package:flashcards/models/current_deck.dart';
import 'package:flashcards/models/decks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/decks.dart';

void main() {
  var deckStorage = DeckStorage();

  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => DecksModel(deckStorage)),
          ChangeNotifierProvider(builder: (context) => CurrentDeck())
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash cards',
      home: DecksPage()
    );
  }
}
