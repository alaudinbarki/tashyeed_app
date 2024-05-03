import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/auth/domain/domain.dart';

final authStateChangesUseCaseProvider = Provider<AuthStateChangesUseCase>(
  (ref) {
    final authRepository = ref.watch(authRepositorProvider);
    return AuthStateChangesUseCase(authRepository);
  },
);
