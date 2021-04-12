import 'package:flutter/material.dart';

import '../../widget/card_set.dart';

class FlashcardListPage extends StatelessWidget {
  final cardList = [
    {'id': '0', 'title': 'English words', 'itemAmount': '300'},
    {'id': '1', 'title': 'Japanese words', 'itemAmount': '400'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card List")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: cardList.map((item) => new CardSet(item)).toList(),
        ),
      ),
    );
  }
}
