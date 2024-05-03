import 'package:flutter/material.dart';
import '/config/config.dart';

class TextSettingsState {
  TextAlign textAlign = TextAlign.start;
  Color backgroundColor = Colors.purple;
  double fontSize = Dimensions.quoteTextFontSizeSmall;
  FontWeight fontWeight = FontWeight.normal;
  double wordSpacing = Dimensions.quoteTextWordSpacingNone;
  double letterSpacing = Dimensions.quoteTextLetterSpacingNone;
  String quoteText = '';
  String quoteAuthor = 'unknown';
  int isFavorite = 0;
}
