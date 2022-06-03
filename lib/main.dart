import 'package:flutter/material.dart';

void main() {
  runApp(const MyItemCatalogApp());
}

class MyItemCatalogApp extends StatelessWidget {
  const MyItemCatalogApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', theme: ThemeData());
  }
}
