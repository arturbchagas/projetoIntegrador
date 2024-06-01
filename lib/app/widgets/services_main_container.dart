import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/avaliation.dart';
import 'package:ijato/app/widgets/scheduling.dart';
import 'package:ijato/app/widgets/service_bar.dart';

class serviceMain extends StatelessWidget {
  const serviceMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainRow(
            establishmentName: 'vipCar', avaliation: Avaliation(number: '4.9')),
        ServiceBar(
          icon: const Icon(Icons.house),
          icon2: const Icon(Icons.sync_alt),
          iconOn: const Icon(
            Icons.radio_button_checked,
            color: Colors.green,
          ),
          weekDays: Week(
            days: "D",
            openday: Colors.green,
          ),
          weekDays1: Week(days: "S", openday: Colors.grey),
          weekDays2: Week(days: "T", openday: Colors.green),
          weekDays3: Week(days: "Q", openday: Colors.green),
          weekDays4: Week(days: "Q", openday: Colors.green),
          weekDays5: Week(days: "S", openday: Colors.green),
          weekDays6: Week(days: "S", openday: Colors.green),
        ),
        SizedBox(
          height: 15,
        ),
        ChekBoxScheduling(hour: '06:00 - 07:00', available: true)
      ],
    );
  }
}
