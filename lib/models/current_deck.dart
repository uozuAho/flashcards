import 'package:flashcards/business/deck.dart';
import 'package:flutter/material.dart';

class CurrentDeck extends ChangeNotifier {
  FlashcardDeck _deck;
  int _currentIndex = 0;
  _CurrentCard _currentCard;

  String get deckName => _deck.name;

  CardSide get showingCardSide => _currentCard.showingSide;

  void flipCard() {
    _currentCard.flip();
    notifyListeners();
  }

  void nextCard() {
    if (_currentIndex == _deck.cards.length - 1)
      _setCardIndex(0);
    else
      _setCardIndex(_currentIndex + 1);

    notifyListeners();
  }

  void set(FlashcardDeck deck) {
    _deck = deck;
    _setCardIndex(0);
    notifyListeners();
  }

  void _setCardIndex(int index) {
    if (index >= _deck.cards.length) {
      throw new Exception('index out of range');
    }
    _currentIndex = index;
    _currentCard = _CurrentCard(_deck.cards[_currentIndex]);
  }
}

class _CurrentCard {
  final Flashcard _card;
  bool _facingUp = true;

  _CurrentCard(this._card);

  CardSide get showingSide => _facingUp ? _card.front : _card.back;

  void flip() {
    _facingUp = !_facingUp;
  }
}
