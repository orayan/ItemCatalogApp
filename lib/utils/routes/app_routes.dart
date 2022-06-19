part of '../imports/app_imports.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    // "/": (context) => const PageSplash(),
    // "/home": (context) => const PageHome()
    PageSplash.routeName: (context) => const PageSplash(),
    PageHome.routeName: (context) => const PageHome()
  };
}
