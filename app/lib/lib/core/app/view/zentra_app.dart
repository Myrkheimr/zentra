import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zentra/lib/core/core.dart';
import 'package:zentra/lib/enums/app_status.dart';
import 'package:zentra/lib/utils/utils.dart';

class ZentraApp extends StatelessWidget {
  const ZentraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AppBloc>(),
      child: const _ThisShallBeNamedLater(),
    );
  }
}

class _ThisShallBeNamedLater extends StatelessWidget {
  const _ThisShallBeNamedLater();

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      blocRead<AppBloc>(context).add(const AppEvent.started());
    });

    return WidgetsApp(
      color: const Color(0xFF000000),
      builder: (context, _) {
        return const Center(child: _AppBlocStatusText());
      },
    );
  }
}

class _AppBlocStatusText extends StatelessWidget {
  const _AppBlocStatusText();

  @override
  Widget build(BuildContext context) {
    final status = blocSelect<AppBloc, AppStatus>(
      context,
      (b) => b.state.status,
    );

    final text = switch (status) {
      AppStatus.initial => 'Starting.....',
      AppStatus.loading => 'Loading.....',
      AppStatus.loaded => 'Ready',
      AppStatus.error => 'Uh oh!, Error.',
    };

    return Text(text);
  }
}
