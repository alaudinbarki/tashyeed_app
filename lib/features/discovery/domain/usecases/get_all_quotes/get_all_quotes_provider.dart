import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';

final getAllQuotesUseCaseProvider = Provider<GetAllQuotes>((ref) {
  final repository = ref.watch(remoteQuoteRepositoryProvider);
  return GetAllQuotes(repository);
});
