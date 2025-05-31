import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

final Logger logger = Logger('Global');

void initLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      debugPrint(
        '[${record.level.name}] ${record.loggerName}: ${record.message}',
      );
    }
  });
}
