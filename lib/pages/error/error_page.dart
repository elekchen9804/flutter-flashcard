import 'package:flashcard/core/services/router_service.dart';
import 'package:flashcard/pages/error/error_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 使用 GetView 直接將對應的 Ctrl 註冊進此 Widget
// 直接使用 controller.XXX 就可取用 Ctrl 中的變數
class ErrorPage extends GetView<ErrorCtrl> {
  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(title: Obx(() => Text("${controller.title}"))),
        body: Center(
          child: Column(
            children: [
              Text("${controller.errorContent}"),
              RaisedButton(
                child: Text('Go to Landing'),
                onPressed: () => RouterService.toLanding(),
              )
            ],
          ),
        ),
      );
}
