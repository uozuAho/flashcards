import 'package:flutter/material.dart';

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
        body: FlashCard(),
      )
    );
  }
}

class FlashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: <Widget>[
            Text('What is the word for 1')
          ],
        ),
      ),
    );
  }
}