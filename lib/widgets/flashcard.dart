import 'package:flutter/material.dart';

class FlashCard extends StatefulWidget {
  @override
  _FlashCardState createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
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
