part of 'app_bloc.dart';

@MappableClass(discriminatorKey: 'event')
sealed class AppEvent with AppEventMappable {
  const AppEvent();

  const factory AppEvent.started() = AppStarted;
}

@MappableClass(discriminatorValue: 'started')
final class AppStarted extends AppEvent with AppStartedMappable {
  const AppStarted();
}
