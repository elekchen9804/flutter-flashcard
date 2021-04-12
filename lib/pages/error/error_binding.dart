import 'package:get/get.dart';
import 'package:flashcard/pages/error/error_ctrl.dart';

class ErrorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ErrorCtrl());
  }
}
