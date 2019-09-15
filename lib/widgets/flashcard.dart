import 'package:flashcards/models/current_deck.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Flashcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentDeck>(
      builder: (context, deck, child) {
        final text = deck.facingUp ? deck.currentCard.frontText : deck.currentCard.backText;
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
                      child: Text(text)
                  )
              ),
            ),
          ),
        );
      },
    );
  }
}
