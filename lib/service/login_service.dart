import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:yumi/domain/auth/entities/login_data.dart';
import 'package:yumi/domain/user/entity/user.dart';
import 'package:yumi/statics/api_statics.dart';

class LoginServices {
  static Future<User> login(
      {required LoginData login, BuildContext? context}) async {
    try {
      final res = await DioClient.simpleDio(context).post(
          ApiKeys.getApiKeyString(apiKey: ApiKeys.login),
          data: jsonEncode(login.toJson()));

      return User.fromJson(res.data);
    } catch (err) {
      debugPrint(err.toString());
      return const User();
    }
  }
}
