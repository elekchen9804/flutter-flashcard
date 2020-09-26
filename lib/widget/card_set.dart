import 'package:flutter/material.dart';

class CardSet extends StatelessWidget {
  final cardContent;

  CardSet(this.cardContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: ListTile(
              leading: Icon(Icons.library_books),
              title: Text(cardContent['title']),
              subtitle: Text(cardContent['itemAmount']),
            ),
          ),
        ),
      ),
    );
  }
}
