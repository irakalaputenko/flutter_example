import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class TranslationService extends AssetLoader {
  String _currentlocale = 'uk';

  String get locale => _currentlocale;

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    _currentlocale = locale.languageCode;

    return {};
  }

  // TODO: think how to remove context from this class
  Future<void> fetch(BuildContext context) async {
    final easyLocalization = EasyLocalization.of(context);

    if (easyLocalization == null) {
      return;
    } else {
      await easyLocalization.delegate.localizationController
          ?.loadTranslations();
    }
  }

  void setLocale(
    BuildContext context,
    Locale locale,
  ) =>
      context.setLocale(locale).then((_) => fetch(context));
}
