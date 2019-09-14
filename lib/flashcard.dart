import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 300,
            child: Center(
              child: Text('What is the word for 1?'),
            )
          ),
        ),
      ),
    );
  }
}
