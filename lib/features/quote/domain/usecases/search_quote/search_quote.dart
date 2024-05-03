import 'package:dartz/dartz.dart';
import '/features/quote/quote.dart';
import '/core/core.dart';

class SearchQuote implements UseCase<QuoteList, String> {
  final QuoteRepository _repository;

  SearchQuote(this._repository);
  @override
  Future<Either<Failure, QuoteList>> call(String params) async {
    return await _repository.searchQuote(params);
  }
}
