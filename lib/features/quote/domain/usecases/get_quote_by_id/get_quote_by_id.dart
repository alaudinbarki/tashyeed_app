import 'package:dartz/dartz.dart';
import '/features/quote/quote.dart';
import '/core/core.dart';

class GetQuoteById implements UseCase<Quote?, int> {
  final QuoteRepository _repository;

  GetQuoteById(this._repository);
  @override
  Future<Either<Failure, Quote?>> call(int params) async {
    return await _repository.getQuoteById(params);
  }
}
