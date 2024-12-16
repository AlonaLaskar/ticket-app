import 'package:flutter/material.dart';
import '/core/res/styles/app_styles.dart';

class TextStyleeBigTitle extends StatelessWidget {
  const TextStyleeBigTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.heandLineStyle2.copyWith(color: Colors.white),
    );
  }
}
