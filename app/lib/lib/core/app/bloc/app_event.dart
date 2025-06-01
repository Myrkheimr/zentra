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

@MappableClass(discriminatorValue: 'first_launch_status_changed')
final class AppFirstLaunchStatusChanged extends AppEvent
    with AppFirstLaunchStatusChangedMappable {
  const AppFirstLaunchStatusChanged({required this.status});

  final bool status;
}
