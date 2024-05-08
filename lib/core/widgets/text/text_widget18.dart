import 'package:flutter/material.dart';

class Text18 extends StatelessWidget {
  final String text;
  const Text18({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}
