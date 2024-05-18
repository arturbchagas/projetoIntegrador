import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                                  width: 100, height: 100, child: LogoImage()),
                              SizedBox(
                                  width: 100, height: 100, child: AvatarImage())
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
                    Column(
                      children: [
                        Container(
                          width: 402,
                          height: 101,
                          margin: const EdgeInsets.only(
                              top: 21, right: 13, left: 13),
                          padding: const EdgeInsets.only(left: 9),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(174, 174, 174, 1.0),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                    size: 40.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('VipCar:'),
                                  SizedBox(
                                    width: 47,
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons
                                                    .star_rounded, // ícone de estrela
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons
                                                    .star_rounded, // ícone de estrela
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons
                                                    .star_rounded, // ícone de estrela
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons
                                                    .star_rounded, // ícone de estrela
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons
                                                    .star_rounded, // ícone de estrela
                                                color: Colors.yellow,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 11),
                                  Avaliation(
                                    number: '4.7',
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.local_car_wash,
                                    size: 24,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  ServiceBar(
                                      icon: Icon(Icons.house),
                                      icon2: Icon(Icons.sync_alt),
                                      iconOn: Icon(
                                        Icons.radio_button_on,
                                        color: Colors.green,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
