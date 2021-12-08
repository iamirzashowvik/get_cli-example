import 'package:get/get.dart';

import '../controllers/anothersceen_controller.dart';

class AnothersceenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnothersceenController>(
      () => AnothersceenController(),
    );
  }
}
