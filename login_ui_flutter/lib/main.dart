import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'bindings/bindings.dart';
import '../screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Login UI - Flutter',
      home: LoginScreen(),
    );
  }
}
