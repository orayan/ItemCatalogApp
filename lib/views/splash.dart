part of '../utils/imports/app_imports.dart';

class PageSplash extends StatefulWidget {
  static const routeName = 'PageSplash';
  const PageSplash({Key? key}) : super(key: key);

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      // Navigator.pushNamed(context, '/home');
      // Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      Navigator.pushReplacementNamed(context, PageHome.routeName);
    });
    dev.log('initState', name: PageSplash.routeName);
  }

  @override
  void dispose() {
    super.dispose();
    dev.log('dispose', name: PageSplash.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(AppImages.appIcon),
              width: AppDime.half.sw,
            ),
            AppDime.lg.verticalSpace,
            Text(AppLangKey.appName).tr()
          ],
        ),
      ),
    );
  }
}
