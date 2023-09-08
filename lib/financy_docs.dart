library financy_docs;

import 'package:flutter/services.dart';

export 'package:financy_docs/widgets/agreements.dart';

class FinancyDocs {
  const FinancyDocs();

  Future<String> load(String value) async => await rootBundle.loadString(value);

  String get termsOfService => 'packages/financy_docs/assets/docs/tos.md';

  String get privacyPolicy => 'packages/financy_docs/assets/docs/privacy.md';

  String get eula => 'packages/financy_docs/assets/docs/eula.md';
}
