import 'package:flashcard/ctrl/global_ctrl.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final globalCtrl = GlobalCtrl.to;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${globalCtrl.isLogin.value}'),
    );
  }
}
