import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class ResponsiveWidget extends AdaptiveWidget {
  const ResponsiveWidget({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget mobileBuild(BuildContext context) {
    return mobile;
  }

  @override
  Widget webBuild(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width > 1200) {
      return desktop;
    } else if (size.width > 600 && size.width <= 1200) {
      return tablet;
    } else {
      return mobile;
    }
  }
}

abstract class AdaptiveWidget extends StatelessWidget {
  const AdaptiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (isWebContext()) {
      return webBuild(context);
    } else {
      return mobileBuild(context);
    }
  }

  Widget webBuild(BuildContext context);
  Widget mobileBuild(BuildContext context);
}

// class MyScreen extends AdaptiveWidget {
//   const MyScreen({super.key});

//   @override
//   Widget webBuild(BuildContext context) {
//     return const SizedBox();
//     // Web-specific implementation
//   }

//   @override
//   Widget mobileBuild(BuildContext context) {
//     return const SizedBox();
//     // Mobile-specific implementation
//   }
// }

bool isWebContext() => kIsWeb;


// class ResponsiveWidget extends StatelessWidget {
//   const ResponsiveWidget({
//     super.key,
//     required this.desktop,
//     required this.largeMobile,
//     required this.mobile,
//     required this.tablet,
//     this.extraLargeScreen,
//   });

//   final Widget desktop;
//   final Widget? largeMobile;
//   final Widget mobile;
//   final Widget? tablet;
//   final Widget? extraLargeScreen;

//   static bool isMobile(BuildContext context) {
//     return MediaQuery.sizeOf(context).width <= 500;
//   }

//   static bool isLargeMobile(BuildContext context) {
//     return MediaQuery.sizeOf(context).width <= 700;
//   }

//   static bool isTablet(BuildContext context) {
//     return MediaQuery.sizeOf(context).width < 1080;
//   }

//   static bool isDesktop(BuildContext context) {
//     return MediaQuery.sizeOf(context).width > 1024;
//   }

//   static bool isExtraLargeScreen(BuildContext context) {
//     return MediaQuery.sizeOf(context).width > 1400;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     // return LayoutBuilder(builder: (context, constraints) {
//     //   final Size size = Size(constraints.maxWidth, constraints.maxHeight);
//     //   if (size.width > 1400 && extraLargeScreen != null) {
//     //     return extraLargeScreen!;
//     //   } else if (size.width >= 1080) {
//     //     return desktop;
//     //   } else if (size.width >= 700 && tablet != null) {
//     //     return tablet!;
//     //   } else if (size.width >= 500 && largeMobile != null) {
//     //     return largeMobile!;
//     //   } else {
//     //     return mobile;
//     //   }
//     // });

//     if (size.width > 1400 && extraLargeScreen != null) {
//       return extraLargeScreen!;
//     } else if (size.width >= 1080) {
//       return desktop;
//     } else if (size.width >= 700 && tablet != null) {
//       return tablet!;
//     } else if (size.width >= 500 && largeMobile != null) {
//       return largeMobile!;
//     } else {
//       return mobile;
//     }
//   }
// }
