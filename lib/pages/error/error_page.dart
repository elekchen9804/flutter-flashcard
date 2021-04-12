import 'package:flashcard/pages/error/error_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorPage extends GetView<ErrorCtrl> {
  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(title: Obx(() => Text("${controller.title}"))),
        body: Center(
          child: Obx(() => Text("${controller.title}")),
        ),
      );
}
