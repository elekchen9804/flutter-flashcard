import 'package:get/get.dart';
import 'package:flashcard/pages/login/login_ctrl.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginCtrl());
  }
}
