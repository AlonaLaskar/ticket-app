import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class HeadlingText extends StatelessWidget {
  const HeadlingText(
      {super.key,
      required this.text,
      this.isColor,
      this.aling = TextAlign.start});

  final String text;
  final TextAlign aling;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: aling,
      style: isColor == null
          ? AppStyles.heandLineStyle1.copyWith(color: Colors.white)
          : AppStyles.heandLineStyle1
              .copyWith(color: const Color.fromARGB(255, 30, 32, 32)),
    );
  }
}
