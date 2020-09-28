import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 取得statusBar的高,避開
    double statusBarHeight = MediaQuery.of(context).padding.top;
    // scaffold 內可以吃到全域字體
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 210, 20, 30), // 左上右下
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_bg.jpg'),
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
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Memorize',
                      style: TextStyle(
                        color: Color(0xff083FD2),
                        fontSize: 50.0,
                        height: 2.0,
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
              flex: 8,
              child: Container(), // 中央區域 (動畫層 & 聊天區)
            ),
            Expanded(
              flex: 4, // 底部功能按鈕
              child: Container(
                child: Column(children: [
                  SizedBox(
                    // 使用 expand 就不用 width
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        'Sign up for free',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      padding: EdgeInsets.all(22),
                      color: Color(0xff0BD8E8),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
