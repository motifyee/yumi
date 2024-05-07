import 'package:flutter/material.dart';
import 'package:yumi/app/core/setup/init.dart';
import 'package:yumi/app_config/customer/customer_app_config.dart';
import 'package:yumi/app_config/yumi_app.dart';
import 'package:yumi/app_target.dart';
import 'package:yumi/global.dart';
import 'package:yumi/statics/theme_statics.dart';

Future main() async {
  await init();

  AppTarget.user = AppTargetUser.customers;

  runApp(const YumiCustomer());
}

var config = CustomerAppConfig();

class YumiCustomer extends StatelessWidget {
  const YumiCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return YumiApp(
      config: config,
      builder: (context, child) => _builder(context, child),
    );
  }
}

Widget _builder(context, child) {
  return Builder(
      key: G.builderKey,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(color: Colors.transparent),
          child: SafeArea(
            child: Container(
              color: ThemeSelector.colors.background,
              child: child ?? const Text(''),
            ),
          ),
        );
      });
}
