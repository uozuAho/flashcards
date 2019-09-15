import 'package:flashcards/models/current_deck.dart';
import 'package:flashcards/widgets/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeckViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentDeck>(
      builder: (context, deck, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text(deck.deckName),
            ),
            body: Column(
              children: [
                Expanded(
                  child: Flashcard(),
                ),
                _ControlBar(
                  () {deck.BAD();},
                  () {deck.correctlyAnswered();}
                )
              ],
            )
        );
      }
    );
  }
}

class _ControlBar extends StatelessWidget {

  final Function _onBadPressed;
  final Function _onGoodPressed;

  _ControlBar(this._onBadPressed, this._onGoodPressed);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.cancel),
          color: Colors.red,
          onPressed: _onBadPressed,
        ),
        IconButton(
          icon: Icon(Icons.done),
          color: Colors.green,
          onPressed: _onGoodPressed,
        )
      ],
    );
  }
}