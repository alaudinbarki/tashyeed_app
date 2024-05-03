import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';

final deleteRemoteQuoteProvider = FutureProviderFamily(
  (ref, RemoteQuote quote) async {
    final deleteQuote = ref.read(deleteRemoteQuoteUseCaseProvider);
    return await deleteQuote(quote);
  },
);
