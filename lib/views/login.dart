import 'package:flashcard/styles/base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
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
                      children: <Widget>[Text('QUICKLY LOG IN WITH')],
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
