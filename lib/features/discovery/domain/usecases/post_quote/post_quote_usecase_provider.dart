import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';

final postQuoteUseCaseProvider = Provider<PostQuote>((ref) {
  final repository = ref.watch(remoteQuoteRepositoryProvider);
  return PostQuote(repository);
});
