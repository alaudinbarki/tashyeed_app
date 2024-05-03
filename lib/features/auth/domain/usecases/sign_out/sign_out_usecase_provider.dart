import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/auth/domain/domain.dart';

final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) {
  final authRepository = ref.watch(authRepositorProvider);
  return SignOutUseCase(authRepository);
});
