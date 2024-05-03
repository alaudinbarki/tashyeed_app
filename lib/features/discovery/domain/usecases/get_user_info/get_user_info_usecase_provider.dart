import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';

final getUserInfoUseCaseProvider = Provider<GetUserInfo>((ref) {
  final repository = ref.watch(remoteQuoteRepositoryProvider);
  return GetUserInfo(repository);
});
