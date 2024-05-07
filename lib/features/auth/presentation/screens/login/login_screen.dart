import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tashyeed_app/core/widgets/responsive_widget.dart';
import 'package:tashyeed_app/features/auth/presentation/screens/login/login_web.dart';

import 'login_mobile.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static LoginScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const LoginScreen();

  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? const LoginMobile()
        : const ResponsiveWidget(
            desktop: LoginWeb(),
            largeMobile: LoginMobile(),
            mobile: LoginScreen(),
            tablet: LoginWeb(),
          );
  }
}
