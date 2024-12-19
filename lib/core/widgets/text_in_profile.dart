import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextRemainder extends StatelessWidget {
  const TextRemainder(
      {super.key,
      required this.text,
      this.isColor,
      this.align = TextAlign.start});

  final String text;
  final TextAlign align;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.heandLineStyle2.copyWith(
          color: isColor == null ? Colors.white : AppStyles.litleTextColor),
    );
  }
}
