import 'package:flutter/material.dart';

import 'widgets/deck_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash cards',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flash cards'),
        ),
        body: DeckList(),
      )
    );
  }
}
