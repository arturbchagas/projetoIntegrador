import 'package:flutter/material.dart';
import 'package:ijato/app/controllers/user_controller.dart';
import 'package:ijato/app/pages/establishment_reg.dart';
import 'package:ijato/app/pages/tabs/home_stablishment.dart';
import 'package:ijato/app/pages/tabs/home_user.dart';
import 'package:ijato/app/pages/tabs/schedule_stablishment.dart';
import 'package:ijato/app/pages/user_type.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/pages/tabs/app_navigation_stablishment.dart';
import 'package:ijato/app/pages/login.dart';
import 'package:provider/provider.dart';

import 'pages/register.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.index,
        routes: {
          AppRoutes.appNavigationStablishment: (ctx) =>
              const AppNavitgationStablishment(),
          AppRoutes.index: (ctx) => const LoginPage(),
          AppRoutes.register: (ctx) => const RegisterPage(),
          AppRoutes.homeUser: (ctx) => const HomePage(),
          AppRoutes.homeStablishment: (ctx) => const HomeStablishment(),
          AppRoutes.userType: (ctx) => const UserTypePage(),
          AppRoutes.establishmentReg: (ctx) => const EstablishmentReg(),
          AppRoutes.scheduleStablishment: (ctx) => const ScheduleStablishment(),
        },
      ),
    );
  }
}
