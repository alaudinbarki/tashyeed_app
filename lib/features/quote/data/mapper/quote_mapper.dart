import '/features/quote/quote.dart';

class QuoteMapper {
  static Quote toEntity(QuoteModel model) {
    return Quote(
      id: model.id,
      quoteText: model.quoteText,
      author: model.author,
      textAlign: model.textAlign,
      backgroundColor: model.backgroundColor,
      fontSize: model.fontSize,
      fontWeight: model.fontWeight,
      wordSpacing: model.wordSpacing,
      letterSpacing: model.letterSpacing,
      isFavorite: model.isFavorite,
    );
  }

  static QuoteModel toModel(Quote entity) {
    return QuoteModel(
      quoteText: entity.quoteText,
      id: entity.id,
      author: entity.author,
      textAlign: entity.textAlign,
      backgroundColor: entity.backgroundColor,
      fontSize: entity.fontSize,
      fontWeight: entity.fontWeight,
      wordSpacing: entity.wordSpacing,
      letterSpacing: entity.letterSpacing,
      isFavorite: entity.isFavorite,
    );
  }
}
