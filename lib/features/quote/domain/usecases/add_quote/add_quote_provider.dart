import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final addQuoteUseCaseProvider = Provider<AddQuote>((ref) {
  final repository = ref.read(quoteRepositoryProvider);
  return AddQuote(repository);
});
