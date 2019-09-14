import 'package:flutter/material.dart';

import 'add_deck.dart';
import '../widgets/deck_list.dart';

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
