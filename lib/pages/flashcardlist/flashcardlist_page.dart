import 'package:flashcard/pages/flashcardlist/flashcardlist_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/card_set.dart';

class FlashcardListPage extends GetView<FlashcardListCtrl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card List")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
              controller.cardList.map((item) => new CardSet(item)).toList(),
        ),
      ),
    );
  }
}
