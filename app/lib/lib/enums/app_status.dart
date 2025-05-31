import 'package:dart_mappable/dart_mappable.dart';

part 'generated/app_status.mapper.dart';

@MappableEnum()
enum AppStatus { initial, loading, loaded, error }
