import 'package:flashcards/business/deck.dart' as business;
import 'package:flashcards/widgets/flashcard.dart';
import 'package:flutter/material.dart';

class DeckViewer extends StatefulWidget {
  final String _deckName;

  DeckViewer(this._deckName);

  @override
  _DeckViewerState createState() => _DeckViewerState(_deckName);
}

class _DeckViewerState extends State<DeckViewer> {
  final String _deckName;

  _DeckViewerState(this._deckName);

  @override
  Widget build(BuildContext context) {
    var card = business.Flashcard('front', 'back');
    return Scaffold(
      appBar: AppBar(
        title: Text(_deckName),
      ),
      body: Flashcard(card),
    );
  }
}