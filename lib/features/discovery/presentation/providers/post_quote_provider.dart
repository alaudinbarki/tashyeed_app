import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';
import '/features/quote/quote.dart';
import '/features/profile/presentation/presentation.dart';

final postQuoteProvider = FutureProviderFamily(
  (ref, Quote quote) async {
    final postQuote = ref.read(postQuoteUseCaseProvider);
    final user = ref.watch(userProvider);
    final userId = user.appUser?.userId;
    final remoteQuote = RemoteQuoteMapper.fromLocalToRemoteQuote(
      quote,
      '$userId',
    );
    return await postQuote(remoteQuote);
  },
);
