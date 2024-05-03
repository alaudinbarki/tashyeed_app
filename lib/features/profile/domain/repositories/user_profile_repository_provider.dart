import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/profile/data/data.dart';
import '/features/profile/domain/domain.dart';

final userProfileRepositoryProvider = Provider<UserProfileRepository>((ref) {
  final remoteDataSource = ref.watch(userProfileRemoteDatasourceProvider);
  return UserProfileRepositoryImpl(remoteDataSource);
});
