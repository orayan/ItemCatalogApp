import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:item_catalog_app/utils/language/config.dart';
import 'package:item_catalog_app/views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.path,
      fallbackLocale: AppLangConfig.enLocale,
      child: const MyItemCatalogApp(),
    ),
  );
}

class MyItemCatalogApp extends StatelessWidget {
  const MyItemCatalogApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return const MaterialApp(
            title: 'Item Catalog App',
            debugShowCheckedModeBanner: false,
            home: PageSplash(),
          );
        });
  }
}
