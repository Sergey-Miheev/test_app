import 'package:flutter/cupertino.dart';
import 'package:test_app/common/localization/generated/l10n.dart';

extension ContextExtensions on BuildContext {
  GeneratedLocalization get strings => GeneratedLocalization.of(this);
}
