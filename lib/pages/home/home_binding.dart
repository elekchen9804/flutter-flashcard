import 'package:get/get.dart';
import 'package:flashcard/pages/home/home_ctrl.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeCtrl());
  }
}
