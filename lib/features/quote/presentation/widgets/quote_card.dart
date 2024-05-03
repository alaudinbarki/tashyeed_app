import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/config/config.dart';
import '/features/quote/quote.dart';
import '/core/core.dart';
import 'card_footer.dart';

class QuoteCard extends StatelessWidget {
  QuoteCard({super.key, required this.quote});

  final Quote quote;
  final GlobalKey widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;
    final authorTextStyle = textTheme.labelLarge?.copyWith(
      letterSpacing: quote.letterSpacing,
      color: colorScheme.onSurface,
    );
    final quoteTextSyle = TextStyle(
      color: colorScheme.onSurface,
      fontSize: quote.fontSize,
      wordSpacing: quote.wordSpacing,
      letterSpacing: quote.letterSpacing,
      fontWeight: AppHelpers.fontWeightList[quote.fontWeight],
    );

    final backgroundColor = AppHelpers.intToColor(quote.backgroundColor);

    return Card(
      elevation: 2,
      color: Colors.grey[50],
      shape: RoundedRectangleBorder(
        borderRadius: Dimensions.kBorderRadiusAllSmallest,
      ),
      borderOnForeground: false,
      child: Column(
        children: [
          InkWell(
            borderRadius: Dimensions.kBorderRadiusAllSmallest,
            onTap: () {
              context.pushNamed(
                RouteLocation.detailScreen,
                pathParameters: {AppKeys.id: '${quote.id}'},
              );
            },
            child: RepaintBoundary(
              key: widgetKey,
              child: Container(
                width: double.infinity,
                padding: Dimensions.kPaddingAllLarge,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Dimensions.kRadiusAllSmallest,
                    topRight: Dimensions.kRadiusAllSmallest,
                  ),
                ),
                child: QuoteCardBodyText(
                  colorScheme: colorScheme,
                  quote: quote,
                  quoteTextStyle: quoteTextSyle,
                  authorTextStyle: authorTextStyle,
                ),
              ),
            ),
          ),
          CardFooter(
            quote: quote,
            widgetKey: widgetKey,
          ),
        ],
      ),
    );
  }
}
