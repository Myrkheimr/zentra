import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zentra/lib/core/core.dart';

void main() {
  initLogging();

  if (kDebugMode) {
    Bloc.observer = ZentraBlocObserver();
  }

  configureDependencies();

  runApp(_setupGlobalBlocProviders(const ZentraApp()));
}

Widget _setupGlobalBlocProviders(Widget child) {
  return MultiBlocProvider(
    providers: [BlocProvider(create: (_) => getIt<AppBloc>())],
    child: child,
  );
}
