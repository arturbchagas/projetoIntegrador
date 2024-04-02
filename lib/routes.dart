import 'package:routefly/routefly.dart';

import 'app/pages/login.dart' as a0;
import 'app/pages/user_type.dart' as a1;

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
      RouteEntity(
        key: '/user-type',
        uri: Uri.parse('/user-type'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a1.UserTypePage(),
        ),
      ),
    ];

const routePaths = (
  path: '/',
  login: '/login',
  userType: '/user-type',
);
