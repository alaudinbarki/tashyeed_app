import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/auth/data/datasource/datasource.dart';

final authRemoteDatasourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSourceImpl();
});
