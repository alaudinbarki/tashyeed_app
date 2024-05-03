import 'package:dartz/dartz.dart';
import '/features/discovery/discovery.dart';
import '/core/core.dart';

class LikeDislikeQuote implements UseCase<bool, MapString> {
  final RemoteQuoteRepository _repository;
  LikeDislikeQuote(this._repository);

  @override
  Future<Either<Failure, bool>> call(MapString info) async {
    final String quoteId = info[QuoteKey.quoteId] ?? '';
    final String userId = info[QuoteKey.userId] ?? '';
    return await _repository.likeDislikeQuote(quoteId, userId);
  }
}
