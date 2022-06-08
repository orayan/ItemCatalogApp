import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:item_catalog_app/utils/language/config.dart';

class AppLang {
  // * current lang
  static String currentLang(BuildContext context) =>
      context.locale.languageCode;

  // * check is arabic
  static bool isAr(BuildContext context) =>
      context.locale == AppLangConfig.arLocale;

  // * set locale
  static void setLang(BuildContext context, Locale locale) async =>
      await context.setLocale(locale);
}
