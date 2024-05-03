import 'package:dartz/dartz.dart';
import '/features/discovery/discovery.dart';
import '/core/core.dart';

class HasLikedQuote implements StreamUseCase<bool, MapString> {
  final RemoteQuoteRepository _repository;
  HasLikedQuote(this._repository);

  @override
  Stream<Either<Failure, bool>> call(MapString info) async* {
    final quoteId = '${info[QuoteKey.quoteId]}';
    final userId = '${info[QuoteKey.userId]}';
    yield* _repository.hasLikedQuote(quoteId, userId);
  }
}
