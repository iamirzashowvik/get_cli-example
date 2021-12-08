import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapps/app/modules/home/controllers/home_controller.dart';

class Home2View extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put<HomeController>(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
