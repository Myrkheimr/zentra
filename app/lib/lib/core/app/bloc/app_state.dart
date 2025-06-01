part of 'app_bloc.dart';

@MappableClass()
final class AppState with AppStateMappable {
  const AppState({this.status = AppStatus.initial, this.isFirstLaunch = true});

  final AppStatus status;

  final bool isFirstLaunch;

  static final fromJson = AppStateMapper.fromMap;
  static final fromString = AppStateMapper.fromJson;
}
