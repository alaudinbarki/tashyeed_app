import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/core/core.dart';
import '/features/profile/domain/usecases/current_user/current_user.dart';
import '/features/profile/presentation/presentation.dart';

class UserProfileNotifier extends StateNotifier<UserProfileState> {
  final UserProfileUseCase _getCurrentUserUseCase;

  UserProfileNotifier(
    this._getCurrentUserUseCase,
  ) : super(const UserProfileState.initial()) {
    _getCurrentUser();
  }

  Future<void> _getCurrentUser() async {
    state.copyWith(isLoading: true);
    final result = await _getCurrentUserUseCase(NoParams());
    state = result.fold(
      (failure) => state.copyWith(isLoading: false),
      (appUser) {
        return state.copyWith(
          isLoading: false,
          appUser: appUser,
        );
      },
    );
  }
}
