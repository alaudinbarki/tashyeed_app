import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tashyeed_app/config/config.dart';

import '../../../../../core/constants/app_images.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static SplashScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SplashScreen();

  const SplashScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.push(RouteLocation.login);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(deviceWidth * .1),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SizedBox(
            width: deviceWidth * .5,
            height: deviceHeight * .35,
            child: Image.asset(
              AppImages.tashyeedGif,
              height: 100,
              gaplessPlayback: true,
            ),
          ),
        ),
      ),
    );
  }
}
