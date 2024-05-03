import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/data/datasource/quote_remote_datasource_provider.dart';
import '/features/discovery/discovery.dart';

final remoteQuoteRepositoryProvider = Provider<RemoteQuoteRepository>((ref) {
  final datasource = ref.watch(quoteRemoteDataSourceProvider);
  return RemoteQuoteRepositoryImpl(datasource);
});
