import 'package:flashcards/business/deck.dart';
import 'package:flutter/material.dart';

class CurrentDeck extends ChangeNotifier {
  FlashcardDeck _deck;

  String get deckName => _deck.name;

  CardSide get showingCardSide => _deck.topCard.showingSide;

  void flipCard() {
    _deck.topCard.flip();
    notifyListeners();
  }

  void nextCard() {
    _deck.putTopCardOnBottom();
    notifyListeners();
  }

  void set(FlashcardDeck deck) {
    _deck = deck;
    notifyListeners();
  }
}
