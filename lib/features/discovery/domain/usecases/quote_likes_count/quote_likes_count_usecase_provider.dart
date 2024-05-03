import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';

final likesCountUsecaseProvider = Provider<QuoteLikesCount>((ref) {
  final repository = ref.watch(remoteQuoteRepositoryProvider);
  return QuoteLikesCount(repository);
});
