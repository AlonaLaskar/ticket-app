import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/toogle_expantion_controllor.dart';
import '../../../core/res/styles/app_styles.dart';

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text});
  final String text;
  final ToggleExpationControllor controller =
      Get.put(ToggleExpationControllor());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var textWidget = Text(
        text,
        maxLines: controller.isExpanded.value ? null : 6,
        overflow: controller.isExpanded.value
            ? TextOverflow.visible
            : TextOverflow.ellipsis,
      );

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget,
          GestureDetector(
            onTap: () {
              controller.onItemTapped();
            },
            child: Text(controller.isExpanded.value ? "Read Less" : "Read More",
                style: AppStyles.textStyle.copyWith(
                  color: AppStyles.primaryColor,
                )),
          )
        ],
      );
    });
  }
}
