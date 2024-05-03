import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/auth/auth.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final usecaseSignIn = ref.watch(googleSignInUseCaseProvider);
  final usecaseSignOut = ref.watch(signOutUseCaseProvider);

  return AuthNotifier(usecaseSignIn, usecaseSignOut);
});
