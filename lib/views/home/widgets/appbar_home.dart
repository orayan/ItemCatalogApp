part of '../../../utils/imports/app_imports.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(AppLangKey.appName.tr()),
      actions: [
        IconButton(onPressed: () => dev.log('myApp'), icon: AppSvg.myApp),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
