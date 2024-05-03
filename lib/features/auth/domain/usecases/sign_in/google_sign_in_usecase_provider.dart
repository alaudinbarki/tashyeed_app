import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/auth/domain/domain.dart';

final googleSignInUseCaseProvider = Provider<GoogleSignInUseCase>((ref) {
  final authRepository = ref.watch(authRepositorProvider);
  return GoogleSignInUseCase(authRepository);
});
