import 'dart:collection';

import 'package:flutter/material.dart';

class DecksModel extends ChangeNotifier {
  final List<String> _deckNames = [
    'deck 1',
    'deck 2',
    'deck 3',
    'deck 4',
  ];

  int get numberOfDecks => _deckNames.length;

  String getDeckByPosition(int position) => _deckNames[position];

  void add(String deckName) {
    _deckNames.add(deckName);
    notifyListeners();
  }
}
