import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:zentra/lib/core/di/di.config.dart';

/// Global instance of get_it
final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false, throwOnMissingDependencies: true)
void configureDependencies() => getIt.init();
