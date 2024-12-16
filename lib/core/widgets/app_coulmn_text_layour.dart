import 'package:flutter/material.dart';
import '/core/widgets/text_style_big_title.dart';
import '/core/widgets/text_style_small_title.dart';

class AppCoulmnTextLayout extends StatelessWidget {
  const AppCoulmnTextLayout(
      {super.key, required this.TopText, required this.BottomText,this.align = CrossAxisAlignment.end});
  final String TopText;
  final String BottomText;
  final CrossAxisAlignment align;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        TextStyleeBigTitle(text: TopText),
        const SizedBox(height: 5),
        TextStyleSmallTitle(text: BottomText),
      ],
    );
  }
}
