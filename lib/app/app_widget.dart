import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routefly/routefly.dart';

import 'package:ijato/routes.dart';
import 'package:ijato/app/bindings/user_bindings.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: UserBindings(),
        home: MaterialApp.router(
          title: 'iJato',
          routerConfig: Routefly.routerConfig(
            routes: routes,
            initialPath: routePaths.login,
          ),
        ));
  }
}
