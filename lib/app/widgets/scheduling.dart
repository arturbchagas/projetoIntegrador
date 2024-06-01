import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:ijato/app/widgets/avaliation.dart';
import 'package:ijato/app/widgets/user_buttons.dart';

class MainRow extends StatelessWidget {
  final String establishmentName;
  final Avaliation avaliation;

  const MainRow(
      {required this.establishmentName, required this.avaliation, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.location_on,
          color: Colors.black,
          size: 40.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        Text(
          establishmentName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        const Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded, // ícone de estrela
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_rounded, // ícone de estrela
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_rounded, // ícone de estrela
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_rounded, // ícone de estrela
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_rounded, // ícone de estrela
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        avaliation,
        Icon(
          Icons.local_car_wash,
          size: 24,
        )
      ],
    );
  }
}

class ChekBoxScheduling extends StatelessWidget {
  final String hour;
  final bool available;

  ChekBoxScheduling({required this.hour, required this.available, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 9),
      padding: EdgeInsets.symmetric(vertical: 5.5, horizontal: 12.5),
      width: 351,
      height: 39,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(hour),
          SizedBox(width: 74),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 104,
            height: 20,
            decoration: BoxDecoration(
                color: available ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                available ? 'Disponível' : 'Indisponível',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeekDays extends StatelessWidget {
  final String days;
  final Color openday;
  final bool isSelected;
  final VoidCallback onTap;

  WeekDays(
      {required this.days,
      required this.openday,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.5),
        padding: const EdgeInsets.all(10),
        width: 40,
        height: 39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: openday,
          border: isSelected ? Border.all(color: Colors.white, width: 3) : null,
        ),
        child: Center(
          child: Text(
            days,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class Scheduling extends StatefulWidget {
  final String establishmentName;
  final List<List<Map<String, dynamic>>> schedules;
  final Avaliation avaliation;

  Scheduling({
    required this.avaliation,
    required this.establishmentName,
    required this.schedules,
    Key? key,
  }) : super(key: key);

  @override
  _SchedulingState createState() => _SchedulingState();
}

class _SchedulingState extends State<Scheduling> {
  int selectedDay = DateTime.now().weekday - 1;
  DateTime currentDate = DateTime.now();

  void selectDay(int index) {
    setState(() {
      selectedDay = index;
      currentDate = DateTime.now()
          .add(Duration(days: index - DateTime.now().weekday + 1));
    });
  }

  String getFormattedDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final weekDays = ['S', 'T', 'Q', 'Q', 'S', 'S', 'D'];
    final dayColors = [
      Colors.grey,
      Colors.green,
      Colors.green,
      Colors.green,
      Colors.green,
      Colors.green,
      Colors.green
    ];

    return Container(
      margin: EdgeInsets.only(right: 13, left: 13),
      padding: EdgeInsets.only(right: 14, left: 14, top: 8, bottom: 14),
      decoration: BoxDecoration(
        color: Color.fromRGBO(102, 114, 180, 1.0),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Column(
            children: [
              MainRow(
                  establishmentName: 'vipCar',
                  avaliation: Avaliation(number: '4.9')),
              Center(
                child: Text(
                  'Escolha um Horario',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 13,
              )
            ],
          ),
          Column(
            children: [
              Container(
                width: 374,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(174, 174, 174, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Text(
                      'Data ${getFormattedDate(currentDate)}',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                        height:
                            8), // Espaçamento entre a data e os dias da semana
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          weekDays.length,
                          (index) => WeekDays(
                            days: weekDays[index],
                            openday: dayColors[index],
                            isSelected: index == selectedDay,
                            onTap: () => selectDay(index),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.only(
                          top: 19, bottom: 12, right: 10, left: 10),
                      width: 374,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(114, 114, 114, 1),
                      ),
                      child: Column(
                        children: widget.schedules[selectedDay]
                            .map((schedule) => ChekBoxScheduling(
                                  hour: schedule['hour'],
                                  available: schedule['available'],
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
