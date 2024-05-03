import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';

final quoteRepositoryProvider = Provider<QuoteRepository>((ref) {
  final localDatasource = ref.read(quoteLocalDataSourceProvider);
  return QuoteRepositoryImpl(localDatasource);
});
