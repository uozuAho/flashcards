import 'package:flutter/material.dart';

class DeckList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10,
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          return _buildRow();
        });
  }

  Widget _buildRow() {
    return ListTile(
      title: Text('deck 1'),
    );
  }
}
