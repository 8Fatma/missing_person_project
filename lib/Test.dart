import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'API/Controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller controller = Get.put(Controller());

  void initState() {
  super.initState();
  controller.fetchData(controller.token);
}
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("My Page"),
      ),
      body: Center(
        child: Obx(() => Text(controller.items.value)),
      ),
    );
  }
  }
