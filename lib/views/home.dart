part of '../utils/imports/app_imports.dart';

class PageHome extends StatelessWidget {
  static const routeName = 'home';
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'app store',
            style: AppTheme.h4(context),
          )),
=======
      backgroundColor: AppColors.bgWhite,
>>>>>>> 722e2e822d17118eff6a7b58789e69b3bc0b25c1
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
