import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:item_catalog_app/utils/constant/app_images.dart';
import 'package:item_catalog_app/utils/dime/app_dime.dart';

import 'home.dart';

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
    print('initState ');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
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
            Text("Item Catalog App")
          ],
        ),
      ),
    );
  }
}
