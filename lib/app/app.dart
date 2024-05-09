import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/l10n/languages/index.dart';
import '/config/config.dart';
import '/features/features.dart';

class TashyeedApp extends ConsumerWidget {
  const TashyeedApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLocale = ref.watch(appLocaleProvider);
    final theme = ref.watch(themeProvider);
    final routeConfig = ref.watch(routerProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (ctx, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Tashyeed App',
          theme: TashyeedTheme.lightTheme,
          darkTheme: TashyeedTheme.darkTheme,
          themeMode: theme,
          locale: appLocale,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
            LocalWidgetLocalizations.delegate,
            SubMaterialLocalizations.delegate,
            SubCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          routerDelegate: routeConfig.routerDelegate,
          routeInformationParser: routeConfig.routeInformationParser,
          routeInformationProvider: routeConfig.routeInformationProvider,
        );
      },
    );
  }
}
