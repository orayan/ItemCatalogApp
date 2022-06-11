part of '../imports/app_imports.dart';

class AppLang {
  // * current lang
  static String currentLang(BuildContext context) =>
      context.locale.languageCode;

  // * check is arabic
  static bool isAr(BuildContext context) =>
      context.locale == AppLangConfig.arLocale;

  // * set locale
  // TODO : refactor Future
  static void setLang(BuildContext context, Locale locale) async =>
      await context.setLocale(locale);
}
