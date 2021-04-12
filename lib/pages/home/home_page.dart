import 'package:flashcard/services/router_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Text('Home')),
        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
          child: RaisedButton(
            child: Text("Go to Flashcard list"),
            onPressed: () => Get.toNamed(RouterService.flashcardListPath),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      );
}
