import 'package:flashcards/business/deck.dart';
import 'package:flutter/material.dart';

class DecksModel extends ChangeNotifier {
  final List<String> _deckNames = [
    'deck 1',
    'deck 2',
    'deck 3',
    'deck 4',
  ];

  int get numberOfDecks => _deckNames.length;

  String getDeckNameByPosition(int position) => _deckNames[position];

  void createNewDeck(String deckName) {
    _deckNames.add(deckName);
    notifyListeners();
  }

  FlashcardDeck loadByName(String deckName) {
    return FlashcardDeck(deckName, [
      Flashcard('front 1', 'back 1'),
      Flashcard('front 2', 'back 2')
    ]);
  }
}
