import 'package:flashcards/business/deck.dart' as business;
import 'package:flutter/material.dart';

class Flashcard extends StatefulWidget {
  final business.Flashcard _card;

  Flashcard(this._card);

  @override
  _FlashcardState createState() => _FlashcardState(_card);
}

class _FlashcardState extends State<Flashcard> {
  final business.Flashcard _card;

  bool _facingUp = true;
  String _showingText;

  _FlashcardState(this._card);

  @override
  Widget build(BuildContext context) {
    if (_showingText == null) _showingText = _card.frontText;
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            setState(() {
              _facingUp = !_facingUp;
              _showingText = _facingUp ? _card.frontText : _card.backText;
            });
          },
          child: Container(
            width: 300,
            height: 300,
            child: Center(
              child: Text(_showingText)
            )
          ),
        ),
      ),
    );
  }
}
