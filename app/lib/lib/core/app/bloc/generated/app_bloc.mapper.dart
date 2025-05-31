// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../app_bloc.dart';

class AppEventMapper extends ClassMapperBase<AppEvent> {
  AppEventMapper._();

  static AppEventMapper? _instance;
  static AppEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppEventMapper._());
      AppStartedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppEvent';

  @override
  final MappableFields<AppEvent> fields = const {};

  static AppEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'AppEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static AppEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppEvent>(map);
  }

  static AppEvent fromJson(String json) {
    return ensureInitialized().decodeJson<AppEvent>(json);
  }
}

mixin AppEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AppEventCopyWith<AppEvent, AppEvent, AppEvent> get copyWith;
}

abstract class AppEventCopyWith<$R, $In extends AppEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  AppEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class AppStartedMapper extends SubClassMapperBase<AppStarted> {
  AppStartedMapper._();

  static AppStartedMapper? _instance;
  static AppStartedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppStartedMapper._());
      AppEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'AppStarted';

  @override
  final MappableFields<AppStarted> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'started';
  @override
  late final ClassMapperBase superMapper = AppEventMapper.ensureInitialized();

  static AppStarted _instantiate(DecodingData data) {
    return AppStarted();
  }

  @override
  final Function instantiate = _instantiate;

  static AppStarted fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppStarted>(map);
  }

  static AppStarted fromJson(String json) {
    return ensureInitialized().decodeJson<AppStarted>(json);
  }
}

mixin AppStartedMappable {
  String toJson() {
    return AppStartedMapper.ensureInitialized()
        .encodeJson<AppStarted>(this as AppStarted);
  }

  Map<String, dynamic> toMap() {
    return AppStartedMapper.ensureInitialized()
        .encodeMap<AppStarted>(this as AppStarted);
  }

  AppStartedCopyWith<AppStarted, AppStarted, AppStarted> get copyWith =>
      _AppStartedCopyWithImpl<AppStarted, AppStarted>(
          this as AppStarted, $identity, $identity);
  @override
  String toString() {
    return AppStartedMapper.ensureInitialized()
        .stringifyValue(this as AppStarted);
  }

  @override
  bool operator ==(Object other) {
    return AppStartedMapper.ensureInitialized()
        .equalsValue(this as AppStarted, other);
  }

  @override
  int get hashCode {
    return AppStartedMapper.ensureInitialized().hashValue(this as AppStarted);
  }
}

extension AppStartedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AppStarted, $Out> {
  AppStartedCopyWith<$R, AppStarted, $Out> get $asAppStarted =>
      $base.as((v, t, t2) => _AppStartedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AppStartedCopyWith<$R, $In extends AppStarted, $Out>
    implements AppEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  AppStartedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AppStartedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppStarted, $Out>
    implements AppStartedCopyWith<$R, AppStarted, $Out> {
  _AppStartedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppStarted> $mapper =
      AppStartedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  AppStarted $make(CopyWithData data) => AppStarted();

  @override
  AppStartedCopyWith<$R2, AppStarted, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AppStartedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AppStateMapper extends ClassMapperBase<AppState> {
  AppStateMapper._();

  static AppStateMapper? _instance;
  static AppStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppStateMapper._());
      AppStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppState';

  static AppStatus _$status(AppState v) => v.status;
  static const Field<AppState, AppStatus> _f$status =
      Field('status', _$status, opt: true, def: AppStatus.initial);

  @override
  final MappableFields<AppState> fields = const {
    #status: _f$status,
  };

  static AppState _instantiate(DecodingData data) {
    return AppState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static AppState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppState>(map);
  }

  static AppState fromJson(String json) {
    return ensureInitialized().decodeJson<AppState>(json);
  }
}

mixin AppStateMappable {
  String toJson() {
    return AppStateMapper.ensureInitialized()
        .encodeJson<AppState>(this as AppState);
  }

  Map<String, dynamic> toMap() {
    return AppStateMapper.ensureInitialized()
        .encodeMap<AppState>(this as AppState);
  }

  AppStateCopyWith<AppState, AppState, AppState> get copyWith =>
      _AppStateCopyWithImpl<AppState, AppState>(
          this as AppState, $identity, $identity);
  @override
  String toString() {
    return AppStateMapper.ensureInitialized().stringifyValue(this as AppState);
  }

  @override
  bool operator ==(Object other) {
    return AppStateMapper.ensureInitialized()
        .equalsValue(this as AppState, other);
  }

  @override
  int get hashCode {
    return AppStateMapper.ensureInitialized().hashValue(this as AppState);
  }
}

extension AppStateValueCopy<$R, $Out> on ObjectCopyWith<$R, AppState, $Out> {
  AppStateCopyWith<$R, AppState, $Out> get $asAppState =>
      $base.as((v, t, t2) => _AppStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AppStateCopyWith<$R, $In extends AppState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({AppStatus? status});
  AppStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AppStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppState, $Out>
    implements AppStateCopyWith<$R, AppState, $Out> {
  _AppStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppState> $mapper =
      AppStateMapper.ensureInitialized();
  @override
  $R call({AppStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  AppState $make(CopyWithData data) =>
      AppState(status: data.get(#status, or: $value.status));

  @override
  AppStateCopyWith<$R2, AppState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AppStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
