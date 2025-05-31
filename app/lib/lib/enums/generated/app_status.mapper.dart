// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../app_status.dart';

class AppStatusMapper extends EnumMapper<AppStatus> {
  AppStatusMapper._();

  static AppStatusMapper? _instance;
  static AppStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppStatusMapper._());
    }
    return _instance!;
  }

  static AppStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AppStatus decode(dynamic value) {
    switch (value) {
      case r'initial':
        return AppStatus.initial;
      case r'loading':
        return AppStatus.loading;
      case r'loaded':
        return AppStatus.loaded;
      case r'error':
        return AppStatus.error;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AppStatus self) {
    switch (self) {
      case AppStatus.initial:
        return r'initial';
      case AppStatus.loading:
        return r'loading';
      case AppStatus.loaded:
        return r'loaded';
      case AppStatus.error:
        return r'error';
    }
  }
}

extension AppStatusMapperExtension on AppStatus {
  String toValue() {
    AppStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AppStatus>(this) as String;
  }
}
