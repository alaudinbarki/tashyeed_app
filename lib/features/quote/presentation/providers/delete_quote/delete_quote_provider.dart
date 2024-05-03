import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final deleteQuoteProvider =
    StateNotifierProvider<DeleteQuoteNotifier, QuoteState>((ref) {
  final usecase = ref.read(deleteQuoteUseCaseProvider);
  return DeleteQuoteNotifier(usecase, ref);
});
