import 'package:get/get.dart';

import 'package:todoapps/app/modules/anothersceen/bindings/anothersceen_binding.dart';
import 'package:todoapps/app/modules/anothersceen/views/anothersceen_view.dart';
import 'package:todoapps/app/modules/home/bindings/home_binding.dart';
import 'package:todoapps/app/modules/home/views/home_view.dart';
import 'package:todoapps/app/modules/myprofile/bindings/myprofile_binding.dart';
import 'package:todoapps/app/modules/myprofile/views/myprofile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ANOTHERSCEEN,
      page: () => AnothersceenView(),
      binding: AnothersceenBinding(),
    ),
    GetPage(
      name: _Paths.MYPROFILE,
      page: () => MyprofileView(),
      binding: MyprofileBinding(),
    ),
  ];
}
