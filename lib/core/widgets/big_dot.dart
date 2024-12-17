import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isColor == null ? Colors.white : AppStyles.planAndIcon,
          width: 2.5,
        ),
      ),
    );
  }
}
