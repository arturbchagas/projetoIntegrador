import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String buttonPrimaryName;
  final Color color;
  final Function()? onPressed;

  const ButtonPrimary({
    super.key,
    required this.buttonPrimaryName,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          padding: const MaterialStatePropertyAll(EdgeInsets.all(25)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonPrimaryName,
          style: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
