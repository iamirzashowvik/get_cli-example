import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:todoapps/app/models/myresponse.dart';
import 'package:todoapps/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    getHttp();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  goToAnotherScreen() {
    Get.toNamed(Routes.ANOTHERSCEEN);
  }

  var myname = 'mirza'.obs;

  void changeMyName() {
    myname.value = "abdur rahim";
  }

  var activity = ''.obs;
  void getHttp() async {
    try {
      var response = await Dio().get('https://www.boredapi.com/api/activity');

      final myresponse = myresponseFromJson(jsonEncode(response.data));
      activity.value = myresponse.activity;
    } catch (e) {
      print(e);
    }
  }
}
