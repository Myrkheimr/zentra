part of 'app_bloc.dart';

@MappableClass()
final class AppState with AppStateMappable {
  const AppState({this.status = AppStatus.initial});

  final AppStatus status;

  static final fromJson = AppStateMapper.fromMap;
  static final fromString = AppStateMapper.fromJson;
}
