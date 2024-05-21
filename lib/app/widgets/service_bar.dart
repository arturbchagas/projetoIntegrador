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
  WeekDays weekDays;
  WeekDays weekDays1;
  WeekDays weekDays2;
  WeekDays weekDays3;
  WeekDays weekDays4;
  WeekDays weekDays5;
  WeekDays weekDays6;

  ServiceBar({
    super.key,
    required this.icon,
    required this.icon2,
    required this.iconOn,
    required this.weekDays,
    required this.weekDays1,
    required this.weekDays2,
    required this.weekDays3,
    required this.weekDays4,
    required this.weekDays5,
    required this.weekDays6,
  });

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
                  weekDays,
                  weekDays1,
                  weekDays2,
                  weekDays3,
                  weekDays4,
                  weekDays5,
                  weekDays6,
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
