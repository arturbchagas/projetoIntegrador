import 'package:flutter/material.dart';

import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';

class ServicesStablishment extends StatelessWidget {
  const ServicesStablishment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                  SizedBox(height: 40),
                  Column(
                    children: [
                      Text(
                        "essa tela é de Serviços Estabelecimento:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
