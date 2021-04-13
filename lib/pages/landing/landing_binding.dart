import 'package:flashcard/pages/landing/landing_ctrl.dart';
import 'package:get/get.dart';

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingCtrl());
  }
}
