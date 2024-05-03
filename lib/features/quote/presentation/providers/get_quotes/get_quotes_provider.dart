import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final getQuotesProvider =
    StateNotifierProvider<GetQuotesNotifier, QuoteState>((ref) {
  final usecase = ref.watch(getQuotesUseCaseProvider);
  return GetQuotesNotifier(usecase);
});
