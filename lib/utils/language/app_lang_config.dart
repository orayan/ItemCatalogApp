part of '../imports/app_imports.dart';

class AppLangConfig {
  // code lang
  static String kEn = 'en';
  static String kAr = 'ar';

  // path folder lang
  static String path = 'assets/lang';

  // support lang
  static Locale enLocale = const Locale('en');
  static Locale arLocale = const Locale('ar');

  static List<Locale> supportLocale = [enLocale, arLocale];
}
