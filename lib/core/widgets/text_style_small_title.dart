import 'package:flutter/material.dart';
import '/core/res/styles/app_styles.dart';

class TextStyleSmallTitle extends StatelessWidget {
  const TextStyleSmallTitle(
      {super.key, required this.text, this.align = TextAlign.start});
  final String text;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.heandLineStyle4.copyWith(color: Colors.white),
    );
  }
}
