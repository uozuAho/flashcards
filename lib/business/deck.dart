class FlashcardDeck {
  final String name;
  final List<Flashcard> cards;

  FlashcardDeck(this.name, this.cards);
}

class Flashcard {
  final String frontText;
  final String backText;

  Flashcard(this.frontText, this.backText);
}
