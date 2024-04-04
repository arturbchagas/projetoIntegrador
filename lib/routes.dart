import 'package:routefly/routefly.dart';

import 'app/pages/login.dart' as a0;
import 'app/pages/user_type.dart' as a1;
import 'app/pages/register.dart' as a2;
import 'app/pages/establishment_reg.dart' as a3;

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
      RouteEntity(
        key: '/register',
        uri: Uri.parse('/register'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a2.RegisterPage(),
        ),
      ),
      RouteEntity(
        key: '/establishmentreg',
        uri: Uri.parse('/establishmentreg'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a3.EstablishmentReg(),
        ),
      ),
    ];

const routePaths = (
  path: '/',
  login: '/login',
  userType: '/user-type',
  register: '/register',
  establishmentReg: '/establishmentreg',
);
