import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final quoteLocalDataSourceProvider = Provider<QuoteLocalDatasource>((ref) {
  return QuoteLocalDatasource();
});
