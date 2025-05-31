import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zentra/lib/core/logger/logger.dart';

class ZentraBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    logger.fine('Created: ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    logger.fine('Event → ${bloc.runtimeType}: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    logger.finer('Change → ${bloc.runtimeType}: $change');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logger.severe('Error → ${bloc.runtimeType}: $error', error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}

