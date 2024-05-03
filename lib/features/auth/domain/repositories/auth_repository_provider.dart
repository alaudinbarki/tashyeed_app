import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/auth/auth.dart';

final authRepositorProvider = Provider<AuthRepository>((ref) {
  final remoteDataSource = ref.watch(authRemoteDatasourceProvider);
  return AuthRepositoryImpl(remoteDataSource);
});
