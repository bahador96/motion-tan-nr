import 'package:get/get.dart';

class ShimmerController extends GetxController {
  var isLoading = false.obs;
  void toggle() {
    isLoading.value = !isLoading.value;
  }
}
