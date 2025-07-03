import 'package:go_router/go_router.dart';

import 'package:rutea_app/modules/sync/sync_injection.dart';
import 'package:rutea_app/modules/login/login_injection.dart';
import 'package:rutea_app/modules/register/register_injection.dart';
import 'package:rutea_app/modules/home/home_injection.dart';
import 'package:rutea_app/modules/profile/profile_injection.dart';
import 'package:rutea_app/modules/vehicles/vehicles_injection.dart';
import 'package:rutea_app/modules/tips/tips_injection.dart';

final router = GoRouter(
  initialLocation: '/sync',
  routes: [
    GoRoute(
      path: '/sync',
      builder: (context, state) => SyncInjection.injection(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginInjection.injection(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterInjection.injection(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeInjection.injection(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileInjection.injection(),
    ),
    GoRoute(
      path: '/vehicles',
      builder: (context, state) => VehiclesInjection.injection(),
    ),
    GoRoute(
      path: '/tips',
      builder: (context, state) => TipsInjection.injection(),
    ),
  ],
);
