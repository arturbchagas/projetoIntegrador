import 'package:routefly/routefly.dart';

import 'app/pages/login.dart' as a0;

List<RouteEntity> get routes => [
      RouteEntity(
        key: '/login',
        uri: Uri.parse('/login'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a0.LoginPage(),
        ),
      ),
    ];

const routePaths = (
  path: '/',
  login: '/login',
);
