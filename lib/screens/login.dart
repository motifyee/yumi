import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yumi/forms/login_form.dart';
import 'package:yumi/generated/l10n.dart';
import 'package:yumi/route/route.gr.dart';
import 'package:yumi/statics/theme_statics.dart';
import 'package:yumi/template/login_thrid_part.dart';
import 'package:yumi/template/screen_container.dart';

@RoutePage()
class Login extends StatelessWidget {
  Login({super.key});

  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: ThemeStatics.defaultBlockGap,
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).welcomeBack,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.fontWeight),
                          ),
                          Text(
                            S.of(context).signToContinue,
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize),
                          ),
                          SizedBox(
                            height: ThemeStatics.defaultTitleGap,
                          ),
                          LoginForm(
                            loginFormKey: loginFormKey,
                          ),
                          SizedBox(
                            height: ThemeStatics.defaultBlockGap,
                          ),
                          const LoginThirdPart(),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.push(SignUp());
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (states) => Colors.transparent,
                        ),
                        splashFactory: NoSplash.splashFactory,
                        padding: MaterialStateProperty.resolveWith(
                            (states) => EdgeInsets.zero)),
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/images/Ellipse1.svg',
                          width: MediaQuery.of(context).size.width,
                        ),
                        Positioned.fill(
                          bottom: 20,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              S.of(context).createNewAccount,
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.fontWeight),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    ));
  }
}
