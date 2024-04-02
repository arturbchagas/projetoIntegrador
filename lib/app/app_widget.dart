import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

import 'package:ijato/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MaterialApp.router(
      title: 'iJato',
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.login,
      ),
    ));
  }
}
