import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/discovery.dart';
import '/core/core.dart';
import '/features/profile/profile.dart';

final hasLikedQuoteProvider = StreamProvider.family.autoDispose<bool, String>((
  ref,
  String quoteId,
) {
  final usecase = ref.watch(hasLikedQuoteUseCaseProvider);
  final String userId = ref.watch(userProvider).appUser?.userId ?? '';

  final controller = StreamController<bool>();

  final MapString info = {
    QuoteKey.quoteId: quoteId,
    QuoteKey.userId: userId,
  };
  final sub = usecase(info).listen((snapshot) {
    snapshot.fold(
      (failure) => null,
      (isFavorite) {
        controller.sink.add(isFavorite);
      },
    );
  });

  ref.onDispose(() {
    sub.cancel();
    controller.close();
  });
  return controller.stream;
});
