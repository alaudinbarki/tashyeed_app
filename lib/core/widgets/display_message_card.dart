import 'package:flutter/material.dart';
import '/config/config.dart';

class DisplayErrorMessage extends StatelessWidget {
  const DisplayErrorMessage({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Center(
      child: Text(
        message,
        style: textTheme.bodyMedium?.copyWith(color: Colors.red),
        textAlign: TextAlign.start,
      ),
    );
  }
}
