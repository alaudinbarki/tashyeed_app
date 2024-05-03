import '/features/profile/profile.dart';

abstract class UserProfileRemoteDataSource {
  Future<AppUser?> getCurrentUser();
}
