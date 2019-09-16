import 'package:flashcards/business/deck.dart';
import 'package:flashcards/business/deck_storage.dart';
import 'package:flutter/material.dart';

class DecksModel extends ChangeNotifier {
  DeckStorage _deckStorage;
  DecksModel(this._deckStorage);

  int get numberOfDecks => _deckStorage.numberOfDecks;

  String getDeckNameByPosition(int position) => _deckStorage.deckNames[position];

  void createNewDeck(String deckName) {
    _deckStorage.createNewDeck(deckName);
    notifyListeners();
  }

  FlashcardDeck loadByName(String deckName) {
    return _deckStorage.loadByName(deckName);
  }
}
