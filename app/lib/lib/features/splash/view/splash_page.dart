import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zentra/lib/core/app/app.dart';
import 'package:zentra/lib/core/router/router.gr.dart';
import 'package:zentra/lib/enums/enums.dart';
import 'package:zentra/lib/utils/utils.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    blocRead<AppBloc>(context).add(const AppEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listenWhen: (prev, next) =>
          (prev.status != next.status) ||
          (prev.isFirstLaunch != next.isFirstLaunch),
      listener: (context, state) {
        final status = state.status;
        if (status == AppStatus.initial || status == AppStatus.loading) return;

        final isFirstLaunch = state.isFirstLaunch;
        if (status == AppStatus.loaded) {
          if (isFirstLaunch) {
            routerOf(context).navigate(const OnboardRoute());
          }
        }
      },
      child: const Center(child: FlutterLogo()),
    );
  }
}
