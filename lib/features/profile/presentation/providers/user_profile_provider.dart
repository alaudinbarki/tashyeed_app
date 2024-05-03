import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/profile/profile.dart';

final userProvider =
    StateNotifierProvider<UserProfileNotifier, UserProfileState>((ref) {
  final usecase = ref.watch(userProfileUseCaseProvider);
  return UserProfileNotifier(usecase);
});
