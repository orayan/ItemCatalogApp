part of './utils/imports/app_imports.dart';

class MyItemCatalogApp extends StatelessWidget {
  const MyItemCatalogApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return MaterialApp(
            title: 'Item Catalog App',
            debugShowCheckedModeBanner: false,
            // * lang
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            // * theme
            theme: AppThemeChoose.lightTheme(context),
            darkTheme: AppThemeChoose.darkTheme(context),
            // themeMode: ThemeMode.dark,
            // * (/) -> root
            initialRoute: "/",
            routes: AppRoutes.route,
          );
        });
  }
}
