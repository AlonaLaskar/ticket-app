import 'package:flutter/material.dart';
import '/core/widgets/text_style_big_title.dart';
import '/core/widgets/text_style_small_title.dart';

class AppCoulmnTextLayout extends StatelessWidget {
  const AppCoulmnTextLayout(
      {super.key, required this.topText, required this.bottomText,this.align = CrossAxisAlignment.end});
  final String topText;
  final String bottomText;
  final CrossAxisAlignment align;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        TextStyleeBigTitle(text: topText),
        const SizedBox(height: 5),
        TextStyleSmallTitle(text: bottomText),
      ],
    );
  }
}
