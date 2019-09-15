import 'package:flashcards/business/deck.dart';
import 'package:flutter/material.dart';

class DecksModel extends ChangeNotifier {
  List<String> _deckNames = List<String>.from(_testDataDecks.keys);
  int get numberOfDecks => _testDataDecks.length;

  String getDeckNameByPosition(int position) => _deckNames[position];

  void createNewDeck(String deckName) {
    _deckNames.add(deckName);
    notifyListeners();
  }

  FlashcardDeck loadByName(String deckName) {
    return _testDataDecks[deckName];
  }
}

final _testDataDecks = {
  'cyrillic numbers': FlashcardDeck('cyrillic numbers', [
    Flashcard(CardSide('ноль'), CardSide('nol - 0')),
    Flashcard(CardSide('один'), CardSide('a\'deen - 1')),
    Flashcard(CardSide('два'), CardSide('dva - 2')),
    Flashcard(CardSide('три'), CardSide('tree - 3')),
    Flashcard(CardSide('четыре'), CardSide('chye-tir-ye - 4')),
    Flashcard(CardSide('пять'), CardSide('pyat - 5')),
    Flashcard(CardSide('шесть'), CardSide('shest - 6')),
    Flashcard(CardSide('семь'), CardSide('syem - 7')),
    Flashcard(CardSide('восемь'), CardSide('vo-syem - 8')),
    Flashcard(CardSide('девять'), CardSide('dyev-yat - 9')),
    Flashcard(CardSide('десять'), CardSide('dyes-ya - 10')),
  ])
};
