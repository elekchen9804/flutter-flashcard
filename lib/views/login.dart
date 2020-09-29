import 'package:flashcard/styles/base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
      ),
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
}
