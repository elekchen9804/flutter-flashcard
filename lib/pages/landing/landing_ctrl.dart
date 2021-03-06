import 'package:flashcard/core/ctrl/global_ctrl.dart';
import 'package:get/get.dart';

class LandingCtrl extends GetxController {
  final GlobalCtrl _globalCtrl = Get.find<GlobalCtrl>();

  void changeLoginStatus(status) {
    _globalCtrl.changeLoginStatus(status);
  }
}
