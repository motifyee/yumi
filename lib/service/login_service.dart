import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:yumi/model/login_model.dart';
import 'package:yumi/service/model/login_model.dart';
import 'package:yumi/statics/api_statics.dart';

class LoginServices {
  static Future<LoginResponse> login(
      {required LoginModel login, required BuildContext context}) async {
    try {
      final res = await DioClient.simpleDio(context).post(
          ApiKeys.getApiKeyString(apiKey: ApiKeys.login),
          data: jsonEncode(login.toJson()));

      return LoginResponse.fromJson(res.data);
    } catch (err) {
      debugPrint(err.toString());
      return const LoginResponse();
    }
  }
}
