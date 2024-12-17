import 'package:flutter/material.dart';
import '/core/widgets/text_style_big_title.dart';
import '/core/widgets/text_style_small_title.dart';

class AppCoulmnTextLayout extends StatelessWidget {
  const AppCoulmnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    this.isColor,
    this.align = CrossAxisAlignment.end,
  });
  final String topText;
  final String bottomText;
  final bool? isColor;
  final CrossAxisAlignment align;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        TextStyleeBigTitle(text: topText, isColor: isColor),
        const SizedBox(height: 5),
        TextStyleSmallTitle(text: bottomText, isColor: isColor),
      ],
    );
  }
}
