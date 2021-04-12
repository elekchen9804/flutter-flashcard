import 'package:flashcard/pages/error/error_page.dart';
import 'package:flashcard/pages/flashcardlist/flashcardlist_page.dart';
import 'package:flashcard/pages/home/home_binding.dart';
// package
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
// page
import 'package:flashcard/pages/home/home_page.dart';
import 'package:flashcard/pages/landing/landing_page.dart';
import 'package:flashcard/pages/login/login_page.dart';
// Binding
import 'package:flashcard/pages/error/error_binding.dart';
import 'package:flutter/material.dart';

/// 路由服務
class RouterService {
  /// 路由名
  static final String splashPath = '/splash';
  static final String landingPath = '/landing';
  static final String loginPath = '/login';
  static final String homePath = '/home';
  static final String flashcardListPath = '/flashcardList';
  static final String errorPath = '/error';

  /// 生成路由
  static final generateRoute = [
    GetPage(name: landingPath, page: () => LandingPage()),
    GetPage(name: loginPath, page: () => LoginPage()),
    GetPage(name: homePath, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: flashcardListPath, page: () => FlashcardListPage()),
    GetPage(name: errorPath, page: () => ErrorPage(), binding: ErrorBinding()),
  ];

  /// 首頁 (移除所有棧內page)
  static void goHome() {
    Get.offAllNamed(homePath);
  }

  /// 錯誤頁 (移除所有棧內page)
  static void goErrorPage({@required String errorContent}) {
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
