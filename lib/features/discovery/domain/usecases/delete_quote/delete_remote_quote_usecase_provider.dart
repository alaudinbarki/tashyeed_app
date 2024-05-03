import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';

final deleteRemoteQuoteUseCaseProvider = Provider<DeleteRemoteQuote>((ref) {
  final repository = ref.watch(remoteQuoteRepositoryProvider);
  return DeleteRemoteQuote(repository);
});
