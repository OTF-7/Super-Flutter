library super_flutter;

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/super_flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:super_flutter/super_flutter.dart';

export 'package:super_repository/super_repository.dart';

part 'error/errors.dart';
part 'error/firebase_errors.dart';

abstract class SuperFlutterTranslations {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  SuperFlutterTranslations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }
}
