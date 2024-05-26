import 'package:flutter/material.dart';

class TextPrimary extends StatelessWidget {
  final String textName;

  const TextPrimary({super.key, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
    );
  }
}
