class FlashcardDeck {
  final List<Flashcard> cards;

  FlashcardDeck(this.cards);
}

class Flashcard {
  final String frontText;
  final String backText;

  Flashcard(this.frontText, this.backText);
}
