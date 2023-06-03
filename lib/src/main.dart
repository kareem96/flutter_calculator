import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/bindings/my_bindings.dart';
import 'package:flutter_calculator/src/presentation/main_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      title: "Flutter Calculator",
      home: MainScreen(),
    );
  }
}
