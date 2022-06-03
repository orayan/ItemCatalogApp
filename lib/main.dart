import 'package:flutter/material.dart';
import 'package:item_catalog_app/views/splash.dart';

void main() {
  runApp(const MyItemCatalogApp());
}

class MyItemCatalogApp extends StatelessWidget {
  const MyItemCatalogApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Item Catalog App',
      debugShowCheckedModeBanner: false,
      home: PageSplash(),
    );
  }
}
