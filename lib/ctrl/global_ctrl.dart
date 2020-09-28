// Create controller class and extends GetxController
import 'package:get/get.dart';

class GlobalCtrl extends GetxController {
  /// You do not need that. I recommend using it just for ease of syntax.
  /// with static method: Controller.to.counter();
  /// with no static method: Get.find<Controller>().counter();
  /// There is no difference in performance, nor any side effect of using either syntax. Only one does not need the type, and the other the IDE will autocomplete it.
  static GlobalCtrl get to => Get.find(); // add this line

  RxBool isLogin = false.obs;
  void changeLoginStatus(bool state) {
    isLogin.value = state;
  }
}
