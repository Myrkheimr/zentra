import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:zentra/lib/enums/app_status.dart';

part 'generated/app_bloc.mapper.dart';
part 'app_event.dart';
part 'app_state.dart';

@singleton
final class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppStarted>(_onAppStarted);
    on<AppFirstLaunchStatusChanged>(_onAppFirstLaunchStatusChanged);
  }

  void _onAppStarted(AppStarted event, Emitter<AppState> emit) async {
    emit(state.copyWith(status: AppStatus.loading));

    // TODO: Update isFirstLaunch to false once onboarding is complete
    // It is left as it is just for testing purposes
    await Future.delayed(const Duration(seconds: 2), () {
      emit(state.copyWith(status: AppStatus.loaded));
    });
  }

  void _onAppFirstLaunchStatusChanged(
    AppFirstLaunchStatusChanged event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isFirstLaunch: event.status));
  }

  @disposeMethod
  @override
  Future<void> close() {
    return super.close();
  }
}
