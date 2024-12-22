import 'package:flutter/material.dart';

import '../../../core/widgets/text_style_big_title.dart';
import '../../../core/widgets/text_style_small_title.dart';

class TextRow extends StatelessWidget {
  const TextRow({
    super.key,
    required this.numMails,
    required this.receivedFrom,
  });
  final String numMails;
  final String receivedFrom;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextStyleeBigTitle(text: numMails, isColor: true),
            const TextStyleSmallTitle(text: "Mails", isColor: true),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextStyleeBigTitle(text: receivedFrom, isColor: true),
            const TextStyleSmallTitle(text: "Received from", isColor: true),
          ],
        )
      ],
    );
  }
}
