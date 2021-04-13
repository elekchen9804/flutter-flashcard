import 'package:dio/dio.dart';
import 'package:flashcard/core/ctrl/global_ctrl.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:get/get.dart';

class RequestService {
  Dio dio;

  /// Get 方法
  Future get({@required String path}) async {
    try {
      var response = await dio.get(path);
      // json 解析
      final result = json.decode(response.toString());
      return result;
    } on DioError catch (e) {
      print(
          'Get 錯誤 ${e.response.data}'); //ex:{Data: null, ErrorCode: 40001, ErrorMessage: 密码错误, DataTime: 2020-02-19T23:44:24.682}
      print('Get 錯誤 statusCode ${e.response.statusCode}'); //ex:403 503...

    }
  }

  /// POST 方法
  Future post(String path, params, bool needToken) async {
    final globalCtrl = Get.find<GlobalCtrl>();
    // 塞token
    if (needToken) {
      dio.options.headers['Authorization'] = globalCtrl.authorization;
    }

    // 塞語系
    dio.options.headers['LanguageCode'] = globalCtrl.currentLang;

    try {
      final response = await dio.post(path, data: params);
      final result = json.decode(response.toString());
      return result;
    } on DioError catch (e) {
      if (e.response != null) {}
    }
  }
}
