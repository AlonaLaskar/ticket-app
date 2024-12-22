import 'package:get/get.dart';

class BottomNavControllor extends GetxController {
  //change the index for navigation
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
