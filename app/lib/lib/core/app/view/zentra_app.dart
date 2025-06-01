import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zentra/lib/core/core.dart';
import 'package:zentra/lib/core/router/router.dart';

class ZentraApp extends StatelessWidget {
  const ZentraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AppBloc>(),
      child: _ThisShallBeNamedLater(),
    );
  }
}

class _ThisShallBeNamedLater extends StatelessWidget {
  _ThisShallBeNamedLater();

  final _router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return WidgetsApp.router(
      color: const Color(0xFF000000),
      routerConfig: _router.config(),
    );
  }
}
