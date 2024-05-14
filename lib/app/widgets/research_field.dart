import 'package:flutter/material.dart';

class ResearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;

  const ResearchField({Key? key, this.controller, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: const Icon(Icons.search),
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          border: const OutlineInputBorder(
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
