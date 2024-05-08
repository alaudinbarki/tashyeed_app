// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tashyeed_app/app/app.dart';

import 'core/utils/shared_prefs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    SharedPrefs.init(),
    // Firebase.initializeApp(
    //     // options: DefaultFirebaseOptions.currentPlatform,
    //     ),
  ]);
  runApp(
    const ProviderScope(
      child: TashyeedApp(),
    ),
  );
}
