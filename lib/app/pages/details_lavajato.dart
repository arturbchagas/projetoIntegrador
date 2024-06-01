import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ijato/app/shared/app_routes.dart';

import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/favoritos.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/research_field.dart';
import 'package:ijato/app/widgets/scheduling.dart';
import 'package:ijato/app/widgets/avaliation.dart';
import 'package:ijato/app/widgets/user_buttons.dart';

class DatailsPage extends StatelessWidget {
  const DatailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define os horários e disponibilidades para cada dia da semana
    final schedules = [
      [
        // Domingo
        {'hour': '06:00 - 07:00', 'available': false},
        {'hour': '07:00 - 08:00', 'available': false},
        {'hour': '08:00 - 10:00', 'available': false},
        {'hour': '10:00 - 12:00', 'available': false},
        {'hour': '12:00 - 13:00', 'available': false},
        {'hour': '13:00 - 15:00', 'available': false},
        {'hour': '15:00 - 16:00', 'available': false},
        {'hour': '16:00 - 18:00', 'available': false},
      ],
      [
        // Segunda-feira
        {'hour': '06:00 - 07:00', 'available': false},
        {'hour': '07:00 - 08:00', 'available': true},
        {'hour': '08:00 - 10:00', 'available': false},
        {'hour': '10:00 - 11:00', 'available': true},
        {'hour': '11:00 - 13:00', 'available': false},
        {'hour': '13:00 - 14:00', 'available': true},
        {'hour': '14:00 - 16:00', 'available': false},
        {'hour': '16:00 - 18:00', 'available': true},
      ],
      [
        // Terça-feira
        {'hour': '06:00 - 07:00', 'available': true},
        {'hour': '07:00 - 08:00', 'available': false},
        {'hour': '08:00 - 09:00', 'available': true},
        {'hour': '09:00 - 11:00', 'available': false},
        {'hour': '11:00 - 12:00', 'available': true},
        {'hour': '12:00 - 13:00', 'available': false},
        {'hour': '13:00 - 15:00', 'available': true},
        {'hour': '15:00 - 17:00', 'available': false},
        {'hour': '17:00 - 18:00', 'available': true},
      ],
      [
        // Quarta-feira
        {'hour': '06:00 - 07:00', 'available': false},
        {'hour': '07:00 - 09:00', 'available': true},
        {'hour': '09:00 - 11:00', 'available': false},
        {'hour': '11:00 - 12:00', 'available': true},
        {'hour': '12:00 - 13:00', 'available': false},
        {'hour': '13:00 - 14:00', 'available': true},
        {'hour': '14:00 - 16:00', 'available': false},
        {'hour': '16:00 - 17:00', 'available': true},
        {'hour': '17:00 - 18:00', 'available': false},
      ],
      [
        // Quinta-feira
        {'hour': '06:00 - 08:00', 'available': true},
        {'hour': '08:00 - 09:00', 'available': false},
        {'hour': '09:00 - 11:00', 'available': true},
        {'hour': '11:00 - 12:00', 'available': false},
        {'hour': '12:00 - 14:00', 'available': true},
        {'hour': '14:00 - 15:00', 'available': false},
        {'hour': '15:00 - 17:00', 'available': true},
        {'hour': '17:00 - 18:00', 'available': false},
      ],
      [
        // Sexta-feira
        {'hour': '06:00 - 07:00', 'available': false},
        {'hour': '07:00 - 09:00', 'available': true},
        {'hour': '09:00 - 10:00', 'available': false},
        {'hour': '10:00 - 12:00', 'available': true},
        {'hour': '12:00 - 13:00', 'available': false},
        {'hour': '13:00 - 15:00', 'available': true},
        {'hour': '15:00 - 16:00', 'available': false},
        {'hour': '16:00 - 18:00', 'available': true},
      ],
      [
        // Sábado
        {'hour': '06:00 - 08:00', 'available': true},
        {'hour': '08:00 - 09:00', 'available': false},
        {'hour': '09:00 - 10:00', 'available': true},
        {'hour': '10:00 - 12:00', 'available': false},
        {'hour': '12:00 - 14:00', 'available': true},
        {'hour': '14:00 - 15:00', 'available': false},
        {'hour': '15:00 - 16:00', 'available': true},
        {'hour': '16:00 - 18:00', 'available': false},
      ],
    ];

    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 175, child: AppbarHome()),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: const Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: LogoImage(),
                                ),
                                SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: AvatarImage(),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Scheduling(
                        establishmentName: 'vipCar',
                        avaliation: Avaliation(number: '5.0'),
                        schedules: schedules,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PreviusButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.homeUser);
                        },
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      NextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.servicePage);
                        },
                        nextbuttonName: 'Proximo',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
