import 'package:flashcards/business/deck.dart' as business;
import 'package:flashcards/widgets/flashcard.dart';
import 'package:flutter/material.dart';

class DeckViewer extends StatefulWidget {
  final business.FlashcardDeck _deck;

  DeckViewer(this._deck);

  @override
  _DeckViewerState createState() => _DeckViewerState(_deck);
}

class _DeckViewerState extends State<DeckViewer> {
  final business.FlashcardDeck _deck;

  int _cardIndex = 0;

  _DeckViewerState(this._deck);

  @override
  Widget build(BuildContext context) {
    var card = _deck.cards[_cardIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text(_deck.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: Flashcard(card),
          ),
          _ControlBar()
        ],
      )
    );
  }
}

class _ControlBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.cancel),
            Text('bad')
          ],
        ),
        Column(
          children: [
            Icon(Icons.done),
            Text('good')
          ],
        )
      ],
    );
  }
}