import 'package:dartz/dartz.dart';
import '/features/discovery/discovery.dart';
import '/core/core.dart';

class QuoteLikesCount implements StreamUseCase<int, String> {
  final RemoteQuoteRepository _repository;
  QuoteLikesCount(this._repository);

  @override
  Stream<Either<Failure, int>> call(String quoteId) async* {
    yield* _repository.quoteLikesCount(quoteId);
  }
}
