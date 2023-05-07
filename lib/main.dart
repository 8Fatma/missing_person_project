import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:missing_person_project/Test.dart';
import 'package:missing_person_project/Welcome_Page.dart';

import 'Account/Register_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Missing Persons',
      home: Welcome_Page(),
    );
  }
}
