part of '../utils/imports/app_imports.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppLangKey.appName).tr(),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        AppLang.setLang(context, AppLangConfig.arLocale);
                      },
                      child: const Text('ar'))),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        AppLang.setLang(context, AppLangConfig.enLocale);
                      },
                      child: const Text('en'))),
            ],
          )
        ],
      ),
    );
  }
}
