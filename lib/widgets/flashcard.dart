import 'package:flashcards/pages/deck_viewer_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Flashcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DeckViewerModel>(
      builder: (context, deck, child) {
        return Center(
          child: Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                deck.flipCard();
              },
              child: Container(
                  width: 300,
                  height: 300,
                  child: Center(
                      child: Text(
                        deck.showingCardSide.text,
                        style: TextStyle(fontSize: 40))
                  )
              ),
            ),
          ),
        );
      },
    );
  }
}
