import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';

final likeDislikeQuoteUsecaseProvider = Provider<LikeDislikeQuote>((ref) {
  final repository = ref.watch(remoteQuoteRepositoryProvider);
  return LikeDislikeQuote(repository);
});
