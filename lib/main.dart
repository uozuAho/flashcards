import 'package:flashcards/models/decks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/decks.dart';

void main() => runApp(
    ChangeNotifierProvider(
      builder: (context) => DecksModel(),
      child: MyApp(),
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash cards',
      home: DecksPage()
    );
  }
}
