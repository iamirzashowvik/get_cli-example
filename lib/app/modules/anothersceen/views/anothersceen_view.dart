import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/anothersceen_controller.dart';

class AnothersceenView extends GetView<AnothersceenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnothersceenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AnothersceenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
