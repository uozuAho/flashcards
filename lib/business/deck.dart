class FlashcardDeck {
  final String name;
  final List<Flashcard> _cards;
  int _topCardIndex = 0;

  FlashcardDeck(this.name, this._cards);

  Flashcard get topCard => _cards[_topCardIndex];

  void correctlyAnswered() {
    topCard.faceUp();
    _putTopCardOnBottom();
  }

  void _putTopCardOnBottom() {
    _topCardIndex++;
    if (_topCardIndex >= _cards.length) {
      _topCardIndex = 0;
    }
  }
}

class Flashcard {
  final CardSide front;
  final CardSide back;
  bool _facingUp = true;

  Flashcard(this.front, this.back);

  CardSide get showingSide => _facingUp ? front : back;

  void flip() => _facingUp = !_facingUp;

  void faceUp() => _facingUp = true;
}

class CardSide {
  final String text;

  CardSide(this.text);
}
