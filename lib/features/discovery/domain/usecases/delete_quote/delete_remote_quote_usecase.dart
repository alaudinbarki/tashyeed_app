import 'package:dartz/dartz.dart';
import '/features/discovery/discovery.dart';
import '/core/core.dart';

class DeleteRemoteQuote implements UseCase<bool, RemoteQuote> {
  final RemoteQuoteRepository _repository;
  DeleteRemoteQuote(this._repository);

  @override
  Future<Either<Failure, bool>> call(RemoteQuote quote) async {
    return await _repository.delete(quote);
  }
}
