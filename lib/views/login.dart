import 'package:flashcard/ctrl/global_ctrl.dart';
import 'package:flashcard/styles/base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final globalCtrl = GlobalCtrl.to;
  @override
  Widget build(BuildContext context) {
    // 取得statusBar的高,避開
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          children: [
            SizedBox(
              height: statusBarHeight, // statusBar高
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'QUICKLY LOG IN WITH',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.43,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                margin: EdgeInsets.only(right: 10),
                                child: Image.asset('assets/images/fb_logo.png'),
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          textColor: Color(0xff000000),
                          onPressed: () {
                            print('login FB');
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.43,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                margin: EdgeInsets.only(right: 10),
                                child: Image.asset(
                                    'assets/images/google_logo.png'),
                              ),
                              Text(
                                'Google',
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          textColor: Color(0xff000000),
                          onPressed: () {
                            print('login Google');
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'OR LOGIN WITH YOUR USERNAME',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Enter your username',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Enter your password',
                            ),
                            validator: (value) {
                              if (value.isPassport) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 70, 0, 30),
                          child: Center(
                            child: Text.rich(TextSpan(
                                text: 'Forgot ',
                                style: TextStyle(
                                  color: secondaryTitleTextColor,
                                  fontSize: 18,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'username ',
                                    style: TextStyle(color: secondaryColor),
                                  ),
                                  TextSpan(
                                    text: 'or ',
                                  ),
                                  TextSpan(
                                    text: 'password',
                                    style: TextStyle(color: secondaryColor),
                                  ),
                                  TextSpan(
                                    text: '?',
                                  ),
                                ])),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'By logging in, you accept Memorize\'s',
                                  style: TextStyle(
                                    color: secondaryTitleTextColor,
                                    fontSize: 18,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                        color: secondaryTitleTextColor,
                                        fontSize: 18,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Terms of Service ',
                                          style:
                                              TextStyle(color: secondaryColor),
                                        ),
                                        TextSpan(
                                          text: 'and ',
                                        ),
                                        TextSpan(
                                          text: 'Privacy Policy',
                                          style:
                                              TextStyle(color: secondaryColor),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // expand the rest space
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  // 使用 expand 就不用 width
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      'Log in',
                      style: TextStyle(fontSize: 22.0),
                    ),
                    padding: EdgeInsets.all(22),
                    color: primaryColor,
                    textColor: primaryButtonTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    onPressed: () {
                      globalCtrl.changeLoginStatus(true);
                      Get.offNamed('/home');
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
