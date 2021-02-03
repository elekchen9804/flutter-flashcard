import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Text('Home')),
        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
          child: RaisedButton(
            child: Text("Go to Flashcard list"),
            onPressed: () => Get.toNamed('/flashcardList'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      );
}
