import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {
  final String underlinedText;
  final Function()? onPressed;

  const UnderlinedText({
    super.key,
    required this.underlinedText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        shadowColor: MaterialStatePropertyAll(Colors.transparent),
        surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Text(
        underlinedText,
        style: const TextStyle(
            decorationColor: Colors.white,
            decoration: TextDecoration.underline,
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
