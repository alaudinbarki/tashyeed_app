import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/download/download.dart';

final saveQuoteProvider =
    StateNotifierProvider<SaveQuoteImageNotifier, SaveQuoteImageState>((ref) {
  final captureQuoteWidgetUsecase =
      ref.watch(captureQuoteWidgetUsecaseProvider);
  final saveImageUsecase = ref.watch(saveImageUseCaseProvider);
  return SaveQuoteImageNotifier(captureQuoteWidgetUsecase, saveImageUsecase);
});
