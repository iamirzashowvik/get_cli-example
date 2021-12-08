import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todoapps/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put<HomeController>(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.myname.value)),
            TextButton(
                onPressed: () {
                  controller.changeMyName();
                },
                child: Text('Change my name')),
            Obx(() => Text(controller.activity.value)),
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
                onPressed: () {
                  controller.goToAnotherScreen();
                },
                child: Text('Another Screen'))
          ],
        ),
      ),
    );
  }
}
