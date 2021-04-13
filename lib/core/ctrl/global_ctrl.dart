// Create controller class and extends GetxController
import 'package:get/get.dart';

/// 全
class GlobalCtrl extends GetxController {
  RxBool isLogin = false.obs;
  String authorization = '';
  String currentLang = 'en_US';

  void changeLoginStatus(bool state) {
    isLogin.value = state;
  }
}
