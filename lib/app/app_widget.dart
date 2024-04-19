import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ijato/app/pages/establishment_reg.dart';
import 'package:ijato/app/pages/home_user.dart';
import 'package:ijato/app/pages/user_type.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/pages/login.dart';

import 'pages/register.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.index,
        routes: {
          AppRoutes.index: (ctx) => const LoginPage(),
          AppRoutes.register: (ctx) => const RegisterPage(),
          AppRoutes.homeUser: (ctx) => const HomePage(),
          AppRoutes.userType: (ctx) => const UserTypePage(),
          AppRoutes.establishmentReg: (ctx) => const EstablishmentReg(),

        });
  }
}
