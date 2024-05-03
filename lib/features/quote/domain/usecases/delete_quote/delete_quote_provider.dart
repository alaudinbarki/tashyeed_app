import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final deleteQuoteUseCaseProvider = Provider<DeleteQuote>((ref) {
  final repository = ref.watch(quoteRepositoryProvider);
  return DeleteQuote(repository);
});
