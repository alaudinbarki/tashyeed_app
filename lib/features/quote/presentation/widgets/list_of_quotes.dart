import 'package:flutter/material.dart';
import '/config/config.dart';
import '/features/quote/presentation/widgets/quote_card.dart';
import '/core/core.dart';

class ListOfQuotes extends StatelessWidget {
  const ListOfQuotes({
    super.key,
    required this.quotes,
  });

  final QuoteList quotes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: Dimensions.kPaddingAllLarge,
            itemCount: quotes.length,
            itemBuilder: (context, index) {
              final quote = quotes[index];
              return QuoteCard(quote: quote);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Dimensions.kVerticalSpaceSmaller;
            },
          ),
        ),
        Dimensions.kVerticalSpaceLargest,
      ],
    );
  }
}
