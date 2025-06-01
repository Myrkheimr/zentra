import 'package:auto_route/auto_route.dart';
import 'package:zentra/lib/core/router/router.gr.dart';

// TODO: rename onboard to setup
final onboardRoutes = AutoRoute(
  page: OnboardRoute.page,
  children: [
    AutoRoute(page: OnboardOneRoute.page),
    AutoRoute(page: OnboardTwoRoute.page),
  ],
);
