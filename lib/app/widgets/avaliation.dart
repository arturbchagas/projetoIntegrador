import 'package:flutter/cupertino.dart';

class Avaliation extends StatelessWidget {
  final String number;
  const Avaliation({
    super.key,
    required this.number,
  });

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 50,
      height: 37,
      decoration: BoxDecoration(
        color: Color.fromRGBO(20, 141, 0, 1.0),
        borderRadius: BorderRadius.circular(500),
      ),
      child: Text(
        number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      ),
    );
  }
}
