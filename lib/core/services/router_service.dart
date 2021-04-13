import 'package:flashcard/pages/flashcardlist/flashcardlist_binding.dart';
import 'package:flashcard/pages/login/login_binding.dart';
import 'package:flutter/material.dart';
// package
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
// page
import 'package:flashcard/pages/error/error_page.dart';
import 'package:flashcard/pages/flashcardlist/flashcardlist_page.dart';
import 'package:flashcard/pages/home/home_page.dart';
import 'package:flashcard/pages/landing/landing_page.dart';
import 'package:flashcard/pages/login/login_page.dart';
// Binding
import 'package:flashcard/pages/home/home_binding.dart';
import 'package:flashcard/pages/error/error_binding.dart';
import 'package:flashcard/pages/landing/landing_binding.dart';

/// 路由名
const String splashPath = '/splash';
const String landingPath = '/landing';
const String loginPath = '/login';
const String homePath = '/home';
const String flashcardListPath = '/flashcardList';
const String errorPath = '/error';

/// 路由服務
class RouterService {
  /// 生成路由
  static final generateRoute = [
    GetPage(
      name: landingPath,
      page: () => LandingPage(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: loginPath,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: homePath,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: flashcardListPath,
      page: () => FlashcardListPage(),
      binding: FlashcardListBinding(),
    ),
    GetPage(
      name: errorPath,
      page: () => ErrorPage(),
      binding: ErrorBinding(),
    ),
  ];

  static void toLanding() {
    Get.toNamed(landingPath);
  }

  static void toLogin() {
    Get.toNamed(loginPath);
  }

  static void toFlashcardList() {
    Get.toNamed(flashcardListPath);
  }

  /// 首頁 (移除所有棧內page)
  static void toHome() {
    Get.offAllNamed(homePath);
  }

  /// 錯誤頁 (移除所有棧內page)
  static void toError({@required String errorContent}) {
    // 要傳送的內容 (寫成物件,方便以後新增更多內容)
    var passData = {"errorContent": errorContent};
    Get.offAllNamed(errorPath, arguments: passData);
  }

  /// 開啟外部瀏覽器
  static void toExternalBrowser({@required String goUrl}) async {
    final url = goUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
