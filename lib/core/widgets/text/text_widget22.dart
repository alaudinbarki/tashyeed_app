import 'package:flutter/material.dart';

class Text22 extends StatelessWidget {
  final String text;
  const Text22({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}
