import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/config/config.dart';
import '/features/features.dart';
import '/core/core.dart';

class RemoteCardHeader extends ConsumerWidget {
  const RemoteCardHeader({super.key, required this.quote});

  final RemoteQuote quote;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(getUserInfoProvider(quote.userId));

    return userInfo.when(
      data: (userInfo) {
        return SizedBox(
          height: Dimensions.kQuoteCardFooterHigh,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Dimensions.kHorizontalSpaceLarge,
              Text(
                userInfo.displayName,
                style: context.textTheme.headlineSmall?.copyWith(
                  color: context.colorScheme.tertiaryContainer,
                ),
              ),
              Dimensions.kHorizontalSpaceLarge,
            ],
          ),
        );
      },
      error: (error, stackTrace) => DisplayErrorMessage(
        message: error.toString(),
      ),
      loading: () => const LoadingScreen(),
    );
  }
}
