import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final getFavoritesQuotesProvider =
    StateNotifierProvider<GetFavoritesQuotesNotifier, QuoteState>((ref) {
  final usecase = ref.watch(getQuotesUseCaseProvider);
  return GetFavoritesQuotesNotifier(usecase);
});
