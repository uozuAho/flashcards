class FlashcardDeck {
  final String name;
  final List<Flashcard> cards;

  FlashcardDeck(this.name, this.cards);
}

class Flashcard {
  final CardSide front;
  final CardSide back;

  Flashcard(this.front, this.back);
}

class CardSide {
  final String text;

  CardSide(this.text);
}
