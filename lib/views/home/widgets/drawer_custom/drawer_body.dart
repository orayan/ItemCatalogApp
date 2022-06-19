part of '../../../../utils/imports/app_imports.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          // * Profile
          Text('profile'),
          // * Setting
          Text('setting'),
        ],
      ),
    );
  }
}
