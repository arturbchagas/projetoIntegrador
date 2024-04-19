import 'package:flutter/material.dart';

class TextFieldPrimary extends StatelessWidget {
  final String textFieldName;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final obscureText;

  const TextFieldPrimary({
    super.key,
    required this.textFieldName,
    this.onChanged,
    this.controller,
    this.obscureText= false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7))),
        contentPadding: const EdgeInsets.all(25),
        hintText: textFieldName,
        hintStyle: const TextStyle(color: Colors.black45),
        fillColor: Colors.white70,
        filled: true,
      ),
      cursorColor: Colors.black87,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.black87, fontSize: 14),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
