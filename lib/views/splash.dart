part of '../utils/imports/app_imports.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({Key? key}) : super(key: key);

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      MaterialPageRoute<PageHome> route = MaterialPageRoute(
        builder: (context) => const PageHome(),
      );
      Navigator.pushReplacement(context, route);
    });
    dev.log('initState', name: 'PageSplash');
  }

  @override
  void dispose() {
    super.dispose();
    dev.log('dispose', name: 'PageSplash');
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
