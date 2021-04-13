import 'package:flashcard/core/ctrl/global_ctrl.dart';
import 'package:get/get.dart';

class ErrorCtrl extends GetxController {
  final title = 'Error'.obs;

  /// 取得路由傳過來的參數
  final errorContent = Get.arguments['errorContent'];
}
