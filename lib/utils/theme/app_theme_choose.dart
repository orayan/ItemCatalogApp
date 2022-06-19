part of '../imports/app_imports.dart';

/// DOC : https://api.flutter.dev/flutter/material/ThemeData-class.html
/// Doc : https://api.flutter.dev/flutter/material/TextTheme-class.html
class AppThemeChoose {
  // * Change Font Lang
  static String? enFont = GoogleFonts.aBeeZee().fontFamily;
  static String? arFont = GoogleFonts.cairo().fontFamily;

  // * check lang
  static String? fontFamily(BuildContext context) =>
      AppLang.isAr(context) ? arFont : enFont;

  // * light
  static ThemeData lightTheme(BuildContext context) {
    // * handle font app
    String? fontApp = fontFamily(context);
    return ThemeData.light().copyWith(
      // * primary
      // colorScheme: ThemeData().colorScheme.copyWith(
      //       primary: Colors.pink,
      //       onPrimary: Colors.black,
      //       secondary: Colors.yellow,
      //       onSecondary: Colors.orange,
      //     ),
      // * appBar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.bgWhite,
        foregroundColor: AppColors.bgBlack,
        centerTitle: true,
        elevation: 10,
        titleTextStyle: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontFamily: fontApp),
      ),

      // TODO : tabBarTheme

      /// displayColor ~>  headline1 to headline4, and caption
      /// bodyColor  ~> is applied to the remaining text styles.
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColors.bgBlack,
            displayColor: AppColors.bgBlack,
            fontFamily: fontApp,
          ),
    );
  }

  // * dark
  static ThemeData darkTheme(BuildContext context) {
    // * handle font app
    String? fontApp = fontFamily(context);
    return ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 10,
        titleTextStyle: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontFamily: fontApp),
      ),

      /// displayColor ~>  headline1 to headline4, and caption
      /// bodyColor  ~> is applied to the remaining text styles.
      textTheme: Theme.of(context).textTheme.apply(
            displayColor: Colors.white,
            bodyColor: Colors.white,
            fontFamily: fontApp,
          ),
    );
  }
}
