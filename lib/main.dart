import 'package:flashcards/models/decks.dart';
import 'package:flashcards/widgets/add_deck.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/deck_list.dart';

void main() => runApp(
    ChangeNotifierProvider(
      builder: (context) => DecksModel(),
      child: MyApp(),
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash cards',
      home: DecksPage()
    );
  }
}

class DecksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decks'),
      ),
      body: DeckList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddDeck()));
        },
      ),
    );
  }
}
