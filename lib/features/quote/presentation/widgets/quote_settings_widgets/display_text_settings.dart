import 'package:flutter/material.dart';
import '/features/quote/quote.dart';

class DisplayTextSettings extends StatelessWidget {
  const DisplayTextSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingsDivider(),
        TextAlignSelector(),
        SettingsDivider(),
        TextSizeSelector(),
        SettingsDivider(),
        LetterSpacingSelector(),
        SettingsDivider(),
        WordSpacingSelector(),
        SettingsDivider(),
      ],
    );
  }
}
