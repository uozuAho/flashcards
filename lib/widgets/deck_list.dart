import 'package:flashcards/widgets/flashcard.dart';
import 'package:flutter/material.dart';

class DeckList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10,
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          return _buildRow(context);
        });
  }

  Widget _buildRow(BuildContext context) {
    return ListTile(
      title: Text('deck 1'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FlashCard()));
      },
    );
  }
}
