import 'package:flashcard/core/services/router_service.dart';
import 'package:flashcard/pages/landing/landing_ctrl.dart';
import 'package:flashcard/styles/base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends GetView<LandingCtrl> {
  @override
  Widget build(BuildContext context) {
    // 取得statusBar的高,避開
    double statusBarHeight = MediaQuery.of(context).padding.top;
    // scaffold 內可以吃到全域字體
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 140, 20, 30), // 左上右下
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/landing_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: statusBarHeight, // statusBar高
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Memorize',
                        style: TextStyle(
                          color: Color(0xff083FD2),
                          fontSize: 50.0,
                          height: 1.0,
                        ),
                      ),
                    ),
                    Text(
                      'The best tool to manange and memerize your knowledge',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 17.0,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ), // 主播資訊
            ),
            Expanded(
              flex: 3, // 底部功能按鈕
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      // 使用 expand 就不用 width
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          'Sign up for free',
                          style: TextStyle(fontSize: 22.0),
                        ),
                        padding: EdgeInsets.all(22),
                        color: primaryColor,
                        textColor: primaryButtonTextColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        onPressed: () {
                          controller.changeLoginStatus(true);
                          RouterService.toHome();
                        },
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'Or log in',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      padding: EdgeInsets.all(22),
                      color: Colors.transparent,
                      textColor: Color(0xff0BD8E8),
                      onPressed: () {
                        RouterService.toLogin();
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
