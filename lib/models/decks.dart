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
  'Russian numbers': FlashcardDeck('Russian numbers', [
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
  ]),

  'Russian alphabet': FlashcardDeck('Russian alphabet', [
    Flashcard(CardSide('А'), CardSide('a in father')),
    Flashcard(CardSide('Б'), CardSide('b')),
    Flashcard(CardSide('В'), CardSide('v')),
    Flashcard(CardSide('Г'), CardSide('g')),
    Flashcard(CardSide('Д'), CardSide('d')),
    Flashcard(CardSide('Е'), CardSide('e or ye - yes')),
    Flashcard(CardSide('Ж'), CardSide('s in pleasure')),
    Flashcard(CardSide('З'), CardSide('z')),
    Flashcard(CardSide('И'), CardSide('i in police')),
    Flashcard(CardSide('Й'), CardSide('y in toy')),
    Flashcard(CardSide('К'), CardSide('k')),
    Flashcard(CardSide('Л'), CardSide('l in lamp')),
    Flashcard(CardSide('М'), CardSide('m')),
    Flashcard(CardSide('Н'), CardSide('n')),
    Flashcard(CardSide('О'), CardSide('o in more')),
    Flashcard(CardSide('П'), CardSide('p')),
    Flashcard(CardSide('Р'), CardSide('rolled r')),
    Flashcard(CardSide('С'), CardSide('s in set')),
    Flashcard(CardSide('Т'), CardSide('t')),
    Flashcard(CardSide('У'), CardSide('oo in tool')),
    Flashcard(CardSide('Ф'), CardSide('f')),
    Flashcard(CardSide('Х'), CardSide('ch in bach')),
    Flashcard(CardSide('Ц'), CardSide('ts in sits')),
    Flashcard(CardSide('Ч'), CardSide('ch in chat')),
    Flashcard(CardSide('Ш'), CardSide('sh in sharp')),
    Flashcard(CardSide('Щ'), CardSide('sh in sheer')),
    Flashcard(CardSide('Ы'), CardSide('i in hit')),
    Flashcard(CardSide('Ь'), CardSide('soft sign')),
    Flashcard(CardSide('Э'), CardSide('e in met')),
    Flashcard(CardSide('Ю'), CardSide('yu in you\'ll')),
    Flashcard(CardSide('Я'), CardSide('ya in yard')),
  ])
};
