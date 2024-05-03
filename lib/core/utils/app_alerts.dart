import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '/config/config.dart';
import 'package:flutter/material.dart';
import '/features/features.dart';

class AppAlerts {
  const AppAlerts._();

  static displaySnackbar(BuildContext context, String message, bool isSuccess) {
    final colors = context.colorScheme;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: context.textTheme.bodyMedium,
        ),
        backgroundColor: isSuccess ? colors.onSecondary : colors.onError,
      ),
    );
  }

  static Future<void> showAlertDeleteDialog({
    required BuildContext context,
    required WidgetRef ref,
    required int quoteId,
  }) async {
    final l10n = context.l10n;
    Widget cancelButton = TextButton(
      child: Text(l10n.cancel.toUpperCase()),
      onPressed: () => context.pop(),
    );
    Widget deleteButton = TextButton(
      onPressed: () async {
        context.pop();
        await ref.read(deleteQuoteProvider.notifier).deleteQuote(quoteId).then(
          (value) {
            AppAlerts.displaySnackbar(
              context,
              l10n.quoteDeletedSuccessfully,
              true,
            );
            context.pop();
          },
        );
      },
      child: Text(l10n.delete.toUpperCase()),
    );

    AlertDialog alert = AlertDialog(
      title: Text(l10n.alertTitle),
      content: Text(l10n.alertContent),
      actions: [
        cancelButton,
        deleteButton,
      ],
    );

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
