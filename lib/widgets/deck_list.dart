import 'package:flashcards/models/current_deck.dart';
import 'package:flashcards/models/decks.dart';
import 'package:flashcards/pages/deck_viewer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeckList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var decks = Provider.of<DecksModel>(context);
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: decks.numberOfDecks * 2,
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          var deckIndex = i ~/ 2;
          return _buildRow(context, deckIndex);
        });
  }

  Widget _buildRow(BuildContext context, int deckIndex) {
    var decks = Provider.of<DecksModel>(context);
    var deckName = decks.getDeckNameByPosition(deckIndex);

    return ListTile(
      title: Text(deckName),
      onTap: () {
        var currentDeck = Provider.of<CurrentDeck>(context);
        currentDeck.set(decks.loadByName(deckName));
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DeckViewer()));
      },
    );
  }
}
