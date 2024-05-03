import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/profile/data/data.dart';

final userProfileRemoteDatasourceProvider =
    Provider<UserProfileRemoteDataSource>((ref) {
  return UserProfileRemoteDataSourceImpl();
});
