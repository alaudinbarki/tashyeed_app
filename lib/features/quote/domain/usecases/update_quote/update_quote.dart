import 'package:dartz/dartz.dart';
import '/features/quote/quote.dart';
import '/core/core.dart';

class UpdateQuote implements UseCase<int, Quote> {
  final QuoteRepository _repository;

  UpdateQuote(this._repository);

  @override
  Future<Either<Failure, int>> call(Quote params) async {
    return await _repository.updateQuote(params);
  }
}
