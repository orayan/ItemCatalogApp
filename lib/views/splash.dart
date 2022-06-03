import 'package:flutter/material.dart';
import 'package:item_catalog_app/utils/constant/app_images.dart';
import 'package:item_catalog_app/utils/dime/app_dime.dart';

class PageSplash extends StatelessWidget {
  const PageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppImages.appIcon),
              width: 200,
            ),
            SizedBox(
              height: AppDime.lg,
            ),
            Text("Item Catalog App")
          ],
        ),
      ),
    );
  }
}
