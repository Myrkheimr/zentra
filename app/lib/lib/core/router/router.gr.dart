// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:zentra/lib/features/onboard/view/onboard_one.dart' as _i1;
import 'package:zentra/lib/features/onboard/view/onboard_page.dart' as _i2;
import 'package:zentra/lib/features/onboard/view/onboard_two.dart' as _i3;
import 'package:zentra/lib/features/splash/view/splash_page.dart' as _i4;

/// generated route for
/// [_i1.OnboardOneScreen]
class OnboardOneRoute extends _i5.PageRouteInfo<void> {
  const OnboardOneRoute({List<_i5.PageRouteInfo>? children})
    : super(OnboardOneRoute.name, initialChildren: children);

  static const String name = 'OnboardOneRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.OnboardOneScreen();
    },
  );
}

/// generated route for
/// [_i2.OnboardPage]
class OnboardRoute extends _i5.PageRouteInfo<void> {
  const OnboardRoute({List<_i5.PageRouteInfo>? children})
    : super(OnboardRoute.name, initialChildren: children);

  static const String name = 'OnboardRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardPage();
    },
  );
}

/// generated route for
/// [_i3.OnboardTwoScreen]
class OnboardTwoRoute extends _i5.PageRouteInfo<void> {
  const OnboardTwoRoute({List<_i5.PageRouteInfo>? children})
    : super(OnboardTwoRoute.name, initialChildren: children);

  static const String name = 'OnboardTwoRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnboardTwoScreen();
    },
  );
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashPage();
    },
  );
}
