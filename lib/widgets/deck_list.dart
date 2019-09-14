import 'package:flashcards/widgets/flashcard.dart';
import 'package:flutter/material.dart';

class DeckList extends StatelessWidget {
  final List<String> _deckNames = [
    'deck 1',
    'deck 2',
    'deck 3',
    'deck 4',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _deckNames.length * 2,
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          var deckIndex = i ~/ 2;
          return _buildRow(context, deckIndex);
        });
  }

  Widget _buildRow(BuildContext context, int deckIndex) {
    return ListTile(
      title: Text(_deckNames[deckIndex]),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FlashCard()));
      },
    );
  }
}
