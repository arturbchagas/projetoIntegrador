import 'package:flutter/material.dart';

import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/research_field.dart';
import 'package:ijato/app/widgets/favoritos.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 175, child: AppbarHome()),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: const Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100, height: 100, child: LogoImage()),
                      SizedBox(width: 100, height: 100, child: AvatarImage())
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
                            child:ResearchField(
                              label: 'Buscar lava-jato:',
                            ),
                          ),
                        ],
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
