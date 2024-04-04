import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

import 'package:ijato/app/shared/app_images.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        shadowColor: MaterialStatePropertyAll(Colors.transparent),
      ),
      child: Image.asset(
        AppImages.logo,
      ),
      onPressed: () {
        Routefly.navigate('/login');
      },
    );
  }
}
