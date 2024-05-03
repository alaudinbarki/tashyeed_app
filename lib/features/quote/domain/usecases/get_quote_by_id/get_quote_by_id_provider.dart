import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final getQuoteByIdUseCaseProvider = Provider<GetQuoteById>((ref) {
  final repository = ref.read(quoteRepositoryProvider);
  return GetQuoteById(repository);
});
