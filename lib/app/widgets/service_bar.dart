import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeekDays extends StatelessWidget {
  String days;
  Color openday;

  WeekDays({required this.days, super.key, required this.openday});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: openday,
      ),
      child: Text(
        days,
        style: TextStyle(color: Colors.black, fontSize: 8),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ServiceBar extends StatelessWidget {
  Icon icon;
  Icon icon2;

  Icon iconOn;

  ServiceBar(
      {super.key,
      required this.icon,
      required this.icon2,
      required this.iconOn});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12, left: 17),
          padding: const EdgeInsets.all(2),
          color: Colors.white,
          width: 328,
          height: 28,
          child: Row(
            children: [
              const SizedBox(width: 13),
              icon,
              const SizedBox(width: 6),
              icon2,
              const SizedBox(
                width: 59,
              ),
              Row(
                children: [
                  WeekDays(
                    days: "D",
                    openday: Colors.grey,
                  ),
                  WeekDays(
                    days: "s",
                    openday: Colors.green,
                  ),
                  WeekDays(
                    days: "T",
                    openday: Colors.green,
                  ),
                  WeekDays(
                    days: "Q",
                    openday: Colors.green,
                  ),
                  WeekDays(
                    days: "Q",
                    openday: Colors.green,
                  ),
                  WeekDays(
                    days: "S",
                    openday: Colors.green,
                  ),
                  WeekDays(
                    days: "S",
                    openday: Colors.green,
                  ),
                ],
              ),
              const SizedBox(width: 31),
              iconOn,
              const SizedBox(width: 3),
            ],
          ),
        ),
      ],
    ));
  }
}
