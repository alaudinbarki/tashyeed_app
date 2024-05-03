import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/auth/auth.dart';

final authStateChangesProvider = StreamProvider<User?>((ref) {
  final repository = ref.watch(authRepositorProvider);
  final authStateChanges = AuthStateChangesUseCase(repository);
  return authStateChanges();
});
