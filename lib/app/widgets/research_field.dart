import 'package:flutter/material.dart';

class ResearchField extends StatelessWidget {
  final TextEditingController? controller;

  const ResearchField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: const InputDecoration(
          suffixIcon: Icon(Icons.search),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(7))),
          fillColor: Colors.black26,
          filled: true,
        ),
        cursorColor: Colors.black87,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.black87, fontSize: 14),
        controller: controller,
        onChanged: (value) {},
      ),
    );
  }
}
