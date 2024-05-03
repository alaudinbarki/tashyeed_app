import 'package:firebase_auth/firebase_auth.dart';
import '/features/profile/profile.dart';

class UserProfileRemoteDataSourceImpl implements UserProfileRemoteDataSource {
  @override
  Future<AppUser?> getCurrentUser() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final appUser = AppUser(
      userId: '${currentUser?.uid}',
      displayName: '${currentUser?.displayName}',
      email: '${currentUser?.email}',
      profileImage: '${currentUser?.photoURL}',
    );
    return appUser;
  }
}
