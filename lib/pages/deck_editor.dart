import 'package:flashcards/pages/deck_viewer_model.dart';
import 'package:flashcards/widgets/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeckEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DeckViewerModel>(
        builder: (context, deck, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Edit: " + deck.deckName),
                actions: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DeckEditor()));
                    },
                  ),
                ],
              ),
              body: Column(
                children: [
                  Expanded(
                    child: deck.isEmpty ? _NoCards() : Flashcard(),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
              )
          );
        }
    );
  }
}

class _NoCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("no cards")
    );
  }
}
