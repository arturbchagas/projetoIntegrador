import 'package:flutter/material.dart';
import 'package:ijato/app/controllers/solicitation_controller.dart';
import 'package:provider/provider.dart';

import 'package:ijato/app/controllers/user_controller.dart';

import 'package:ijato/app/shared/app_routes.dart';

import 'package:ijato/app/pages/establishment_reg.dart';
import 'package:ijato/app/pages/tabs/app_navigation_establishment.dart';
import 'package:ijato/app/pages/tabs/home_establishment.dart';
import 'package:ijato/app/pages/tabs/home_user.dart';
import 'package:ijato/app/pages/tabs/schedule_establishment.dart';
import 'package:ijato/app/pages/user_type.dart';
import 'package:ijato/app/pages/login.dart';
import 'package:ijato/app/pages/tabs/services_establishment.dart';
import 'package:ijato/app/pages/tabs/finances_establishment.dart';
import 'package:ijato/app/pages/tabs/requests_establishment.dart';

import 'pages/register.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserController()),
        ChangeNotifierProvider(create: (_) => SolicitationController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.appNavigationEstablishment,
        routes: {
          AppRoutes.appNavigationEstablishment: (ctx) =>
              const AppNavigationEstablishment(),
          AppRoutes.index: (ctx) => const LoginPage(),
          AppRoutes.register: (ctx) => const RegisterPage(),
          AppRoutes.homeUser: (ctx) => const HomePage(),
          AppRoutes.homeEstablishment: (ctx) => const HomeEstablishment(),
          AppRoutes.userType: (ctx) => const UserTypePage(),
          AppRoutes.establishmentReg: (ctx) => const EstablishmentReg(),
          AppRoutes.scheduleEstablishment: (ctx) =>
              const ScheduleEstablishment(),
          AppRoutes.servicesEstablishment: (ctx) =>
              const ServicesEstablishment(),
          AppRoutes.financesEstablishment: (ctx) =>
              const FinancesEstablishment(),
          AppRoutes.requestsEstablishment: (ctx) =>
              const RequestsEstablishment(),
        },
      ),
    );
  }
}