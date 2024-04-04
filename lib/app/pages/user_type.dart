import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

import 'package:ijato/app/widgets/background_image.dart';
import 'package:ijato/app/widgets/button_primary.dart';
import 'package:ijato/app/widgets/logo.dart';

class UserTypePage extends StatelessWidget {
  const UserTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LogoImage(),
                  const SizedBox(height: 50),
                  ButtonPrimary(
                    color: Colors.blue,
                    buttonPrimaryName: "Usuario",
                    onPressed: () {
                      Routefly.navigate('/register');
                    },
                  ),
                  const SizedBox(height: 20),
                  ButtonPrimary(
                    color: Colors.red,
                    buttonPrimaryName: "Estabelecimento",
                    onPressed: () {
                      Routefly.navigate('/establishmentreg');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
