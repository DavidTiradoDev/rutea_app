import 'package:go_router/go_router.dart';
import 'package:rutea_app/modules/home/home_injection.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeInjection.injection(),
    ),
  ],
);
