import 'package:flashcards/models/decks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddDeck extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new deck'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: textController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var decks = Provider.of<DecksModel>(context);
          decks.createNewDeck(textController.text);
          Navigator.pop(context);
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
