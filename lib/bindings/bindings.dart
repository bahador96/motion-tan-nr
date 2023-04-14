import 'package:flutter_application_1/controllers/motion_contoller.dart';
import 'package:flutter_application_1/controllers/shimmer_controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MotionController());
    Get.lazyPut(() => ShimmerController());
  }
}
