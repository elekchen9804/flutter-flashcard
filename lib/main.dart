import 'package:flashcard/core/services/router_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/ctrl/global_ctrl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final GlobalCtrl globalCtrl = Get.put(GlobalCtrl());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // https://github.com/jonataslaw/getx/blob/master/documentation/en_US/route_management.md#navigation-with-named-routes
      initialRoute: globalCtrl.isLogin.value ? '/home' : '/landing',
      defaultTransition: Transition.native,
      getPages: RouterService.generateRoute,
      theme: ThemeData(
        // 設定預設字體
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // home: globalCtrl.isLogin.value ? Home() : Landing(),
      builder: (context, child) {
        //讓字體大小不受外部影響
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
    );
  }
}
