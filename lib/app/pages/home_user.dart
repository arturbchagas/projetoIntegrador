import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_images.dart';
import 'package:ijato/app/widgets/results_bar.dart';
import 'package:ijato/app/shared/app_routes.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/research_field.dart';
import 'package:ijato/app/widgets/favoritos.dart';
import 'package:ijato/app/widgets/avaliation.dart';
import 'package:ijato/app/widgets/service_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                                    child: LogoImage()),
                                SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: AvatarImage())
                              ],
                            ),
                            SizedBox(height: 20),
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    FavoritosBox(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: ResearchField(
                                        label: 'Buscar lava-jato:',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ResultsBar(
                          establishmentName: "iJato",
                          avaliation: Avaliation(number: "5.0"),
                          serviceBar: ServiceBar(
                            icon: const Icon(Icons.emoji_transportation),
                            icon2: const Icon(Icons.sync_alt),
                            iconOn: const Icon(
                              Icons.radio_button_checked,
                              color: Colors.green,
                            ),
                            weekDays: Week(
                              days: "D",
                              openday: Colors.grey,
                            ),
                            weekDays1: Week(days: "S", openday: Colors.green),
                            weekDays2: Week(days: "T", openday: Colors.green),
                            weekDays3: Week(days: "Q", openday: Colors.green),
                            weekDays4: Week(days: "Q", openday: Colors.green),
                            weekDays5: Week(days: "S", openday: Colors.green),
                            weekDays6: Week(days: "S", openday: Colors.green),
                          )),
                      ResultsBar(
                          establishmentName: "VipCar",
                          avaliation: Avaliation(number: "4.9"),
                          serviceBar: ServiceBar(
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
                          )),
                      ResultsBar(
                          establishmentName: "FastJato",
                          avaliation: Avaliation(number: "4.0"),
                          serviceBar: ServiceBar(
                            icon: const Icon(Icons.house),
                            icon2: const Icon(Icons.sync_alt),
                            iconOn: const Icon(
                              Icons.radio_button_checked,
                              color: Colors.red,
                            ),
                            weekDays: Week(
                              days: "D",
                              openday: Colors.green,
                            ),
                            weekDays1: Week(days: "S", openday: Colors.green),
                            weekDays2: Week(days: "T", openday: Colors.green),
                            weekDays3: Week(days: "Q", openday: Colors.grey),
                            weekDays4: Week(days: "Q", openday: Colors.green),
                            weekDays5: Week(days: "S", openday: Colors.green),
                            weekDays6: Week(days: "S", openday: Colors.green),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Image.asset(AppImages.mapa),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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
