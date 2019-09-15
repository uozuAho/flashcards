import 'package:flutter/material.dart';

class Flashcard extends StatefulWidget {
  @override
  _FlashcardState createState() => _FlashcardState();
}

class _FlashcardState extends State<Flashcard> {
  final String _frontText = 'What is the word for 1?';
  final String _backText = 'One';

  bool _facingUp = true;
  String _showingText;

  @override
  Widget build(BuildContext context) {
    if (_showingText == null) _showingText = _frontText;
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            setState(() {
              _facingUp = !_facingUp;
              _showingText = _facingUp ? _frontText : _backText;
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
