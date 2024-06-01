import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class NextButton extends StatelessWidget {
  final String nextbuttonName;
  final Function()? onPressed;

  const NextButton({required this.nextbuttonName, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(49, 101, 24, 1)),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            minimumSize: MaterialStateProperty.all(Size(175, 52))),
        child: Text(
          nextbuttonName,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ));
  }
}

class PreviusButton extends StatelessWidget {
  final Function()? onPressed;

  const PreviusButton({this.onPressed, super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(97, 97, 97, 1)),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            minimumSize: MaterialStateProperty.all(Size(175, 52))),
        child: Text(
          'Voltar',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ));
  }
}
