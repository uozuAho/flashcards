import 'package:flashcards/business/deck.dart';
import 'package:flutter/material.dart';

class CurrentDeck extends ChangeNotifier {
  FlashcardDeck _deck;
  int _currentIndex = 0;
  bool _facingUp = true;

  String get deckName => _deck.name;

  Flashcard get currentCard => _deck.cards[_currentIndex];

  bool get facingUp => _facingUp;

  void flipCard() {
    _facingUp = !_facingUp;
    notifyListeners();
  }

  void nextCard() {
    _facingUp = true;
    _currentIndex++;
    if (_currentIndex >= _deck.cards.length) {
      _currentIndex = 0;
    }
    notifyListeners();
  }

  void set(FlashcardDeck deck) {
    _deck = deck;
    notifyListeners();
  }
}
