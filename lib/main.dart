import 'package:flutter/material.dart';
import 'utils/imports/app_imports.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    // * Language
    EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.path,
      fallbackLocale: AppLangConfig.enLocale,
      child: const MyItemCatalogApp(),
    ),
  );
}
