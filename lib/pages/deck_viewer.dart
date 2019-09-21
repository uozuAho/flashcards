import 'package:flashcards/pages/deck_viewer_model.dart';
import 'package:flashcards/pages/deck_editor.dart';
import 'package:flashcards/widgets/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeckViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DeckViewerModel>(
      builder: (context, deck, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text(deck.deckName),
              actions: [
                IconButton(
                  icon: Icon(Icons.edit),
                  tooltip: 'Edit',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeckEditor()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shuffle),
                  tooltip: 'Shuffle',
                  onPressed: () {
                    deck.shuffle();
                  },
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: deck.isEmpty ? _NoCards() : Flashcard(),
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

class _NoCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("no cards")
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