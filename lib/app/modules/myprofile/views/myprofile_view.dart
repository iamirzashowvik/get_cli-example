import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/myprofile_controller.dart';

class MyprofileView extends GetView<MyprofileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyprofileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyprofileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
