import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/core/core.dart';
import '/features/discovery/discovery.dart';
import '/features/profile/profile.dart';

final likeDislikeQuoteProvider = FutureProvider.autoDispose.family(
  (ref, String quoteId) async {
    final String userId = ref.watch(userProvider).appUser?.userId ?? '';
    final likeDislikeQuote = ref.watch(likeDislikeQuoteUsecaseProvider);
    final MapString info = {
      QuoteKey.quoteId: quoteId,
      QuoteKey.userId: userId,
    };
    return likeDislikeQuote(info);
  },
);
