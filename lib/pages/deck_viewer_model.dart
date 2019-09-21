import 'package:flashcards/business/deck.dart';
import 'package:flutter/material.dart';

class DeckViewerModel extends ChangeNotifier {
  FlashcardDeck _deck;

  String get deckName => _deck.name;

  CardSide get showingCardSide => _deck.topCard.showingSide;

  bool get isEmpty => _deck.isEmpty;

  void flipCard() {
    _deck.topCard.flip();
    notifyListeners();
  }

  void correctlyAnswered() {
    _deck.correctlyAnswered();
    notifyListeners();
  }

  void BAD() {
    _deck.correctlyAnswered();
    notifyListeners();
  }

  void set(FlashcardDeck deck) {
    _deck = deck;
    notifyListeners();
  }

  void shuffle() {
    _deck.shuffle();
    notifyListeners();
  }
}
