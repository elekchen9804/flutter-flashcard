import 'package:get/get.dart';
import 'package:flashcard/core/services/router_service.dart';
import 'package:flashcard/pages/home/home_ctrl.dart';
import 'package:flutter/material.dart';

class HomePage extends GetView<HomeCtrl> {
  @override
  Widget build(context) => Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: RaisedButton(
            child: Text('Go to Flashcard list'),
            onPressed: () =>
                RouterService.toError(errorContent: 'Error From Home Page'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      );
}
