import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/profile/domain/domain.dart';

final userProfileUseCaseProvider = Provider<UserProfileUseCase>(
  (ref) {
    final userRepository = ref.watch(userProfileRepositoryProvider);
    return UserProfileUseCase(userRepository);
  },
);
