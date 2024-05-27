import 'package:flutter/material.dart';
import 'package:yumi/app/core/setup/init.dart';
import 'package:yumi/app_config/driver/dirver_app_config.dart';
import 'package:yumi/app_config/yumi_app.dart';
import 'package:yumi/app_target.dart';
import 'package:yumi/global.dart';
import 'package:yumi/statics/theme_statics.dart';

Future<void> main() async {
  await init();

  AppTarget.user = AppTargetUser.drivers;

  runApp(const YumiDriver());
}

var config = DriverAppConfig();

class YumiDriver extends StatelessWidget {
  const YumiDriver({super.key});

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
