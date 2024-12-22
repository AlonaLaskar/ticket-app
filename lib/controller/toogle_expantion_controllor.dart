import 'package:get/get.dart';

class ToggleExpationControllor extends GetxController {
  var isExpanded = false.obs;

  void onItemTapped() {
    isExpanded.value = !isExpanded.value;
  }
}
