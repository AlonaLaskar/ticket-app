import 'package:flutter/material.dart';
import '/core/res/styles/app_styles.dart';

class TextStyleeBigTitle extends StatelessWidget {
  const TextStyleeBigTitle({super.key, required this.text, this.isColor});
  final String text;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(

      text,
     
      style: isColor == null
          ? AppStyles.heandLineStyle2.copyWith(color: Colors.white)
          : AppStyles.heandLineStyle2
              .copyWith(color: const Color.fromARGB(255, 30, 32, 32)),
    );
  }
}
