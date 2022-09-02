library super_flutter;

import 'package:flutter/material.dart';
import 'package:super_flutter/super_flutter.dart';
export 'package:super_localizations/super_localizations.dart';
export 'package:super_repository/super_repository.dart';

part 'error/failures.dart';


abstract class SuperFlutter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
