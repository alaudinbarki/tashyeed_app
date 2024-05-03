import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/download/download.dart';

final captureQuoteWidgetUsecaseProvider = Provider<CaptureQuoteWidget>((ref) {
  final repository = ref.watch(downloadRepositoryProvider);
  return CaptureQuoteWidget(repository);
});
