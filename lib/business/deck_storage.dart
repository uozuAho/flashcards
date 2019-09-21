import 'deck.dart';

class DeckStorage {
  int get numberOfDecks => deckNames.length;
  List<String> get deckNames => List<String>.from(_testDataDecks.keys);

  void createNewDeck(String deckName) {
    deckNames.add(deckName);
    _testDataDecks[deckName] = FlashcardDeck(deckName, []);
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
    Flashcard(CardSide('десять'), CardSide('dyes-yat - 10')),
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
  ]),

  'Russian alphabet mnemonics': FlashcardDeck('Russian alphabet mnemonics', [
    Flashcard(CardSide('аз буки веди'), CardSide('az buki vedi')),
    Flashcard(CardSide('глаголь добро есть'), CardSide('glagol\' dobro yest\'')),
    Flashcard(CardSide('живете зело, земля, и иже и како люди'),
        CardSide('zhivyete zelo, zyemlya, i izhe, i kako lyudi')),
    Flashcard(CardSide('мыслете наш он покой'), CardSide('myslete nash on pokoy')),
    Flashcard(CardSide('рцы слово твердо'), CardSide('rtsy slovo tvyerdo')),
    Flashcard(CardSide('ук ферт хер'), CardSide('uk fert kher')),
    Flashcard(CardSide('цы червь ша ер ять ю'), CardSide('tsy cherv\' sha yer yat\' yu')),
  ]),

  'Russian cockpit': FlashcardDeck('Russian cockpit', [
    Flashcard(CardSide('скорость'), CardSide('skorost\' - speed')),
    Flashcard(CardSide('высота'), CardSide('vysota - height')),
    Flashcard(CardSide('давление'), CardSide('davleniye - pressure')),
    Flashcard(CardSide('топливо'), CardSide('toplivo - fuel')),
    Flashcard(CardSide('масло'), CardSide('maslo - oil')),
    Flashcard(CardSide('воздух'), CardSide('vozdukh - air')),
    Flashcard(CardSide('гидросистема'), CardSide('gïdrosïstema - hydraulic system')),
    Flashcard(CardSide('двигатель'), CardSide('dvigatel\' - engine')),
    Flashcard(CardSide('кислород'), CardSide('kislorod - oxygen')),
    Flashcard(CardSide('аккумулятор'), CardSide('akkumulyator - battery')),
    Flashcard(CardSide('генератор'), CardSide('generator')),
    Flashcard(CardSide('ток'), CardSide('tok - current')),
  ]),
};
