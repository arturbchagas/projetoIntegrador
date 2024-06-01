import 'package:flutter/material.dart';
import 'package:ijato/app/pages/adress.dart';
import 'package:ijato/app/pages/confirmation_page.dart';
import 'package:ijato/app/pages/establishment_reg.dart';
import 'package:ijato/app/pages/home_establishment.dart';
import 'package:ijato/app/pages/home_user.dart';
import 'package:ijato/app/pages/payment.dart';
import 'package:ijato/app/pages/service_page.dart';
import 'package:ijato/app/pages/user_type.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/pages/login.dart';
import 'package:ijato/app/pages/details_lavajato.dart';

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
          AppRoutes.homeEstablishment: (ctx) => const HomeEstablishmentPage(),
          AppRoutes.detailsLavajato: (ctx) => const DatailsPage(),
          AppRoutes.servicePage: (ctx) => const ServicePage(),
          AppRoutes.adress: (ctx) => const Adress(),
          AppRoutes.payment: (ctx) => const Payment(),
          AppRoutes.confirmation: (ctx) => const Confirmation(),
        });
  }
}
