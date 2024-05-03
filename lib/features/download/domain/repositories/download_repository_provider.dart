import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/download/download.dart';

final downloadRepositoryProvider = Provider<DownloadRepository>((ref) {
  return DownloadRepositoryImpl();
});
