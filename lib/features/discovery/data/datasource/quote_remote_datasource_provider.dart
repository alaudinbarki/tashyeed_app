import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/discovery/data/data.dart';

final quoteRemoteDataSourceProvider = Provider<QuoteRemoteDatasource>((ref) {
  return QuoteRemoteDatasourceImpl();
});
