import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/quote/quote.dart';
import '/core/core.dart';

class GetQuotesNotifier extends StateNotifier<QuoteState> {
  GetQuotesNotifier(this._getQuotesUsecase)
      : super(const QuoteState.initial()) {
    getQuotes();
  }
  final GetQuotes _getQuotesUsecase;

  Future<void> getQuotes() async {
    state = state.copyWith(isLoading: true);
    final results = await _getQuotesUsecase(NoParams());
    state = results.fold(
      (failure) {
        return state.copyWith(
          message: failure.message,
          isLoading: false,
        );
      },
      (quotes) {
        return state.copyWith(
          allQuotes: quotes,
          isLoading: false,
        );
      },
    );
  }
}
