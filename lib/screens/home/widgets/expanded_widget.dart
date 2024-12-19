import 'package:flutter/material.dart';

import '../../../core/res/styles/app_styles.dart';


class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;
  _toogleExpantion() {
    setState(() {
      isExpanded = !isExpanded;
    });
    print("The value of isExpanded is $isExpanded");
  }

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 6,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            _toogleExpantion();
          },
          child: Text(isExpanded ? "Read Less" : "Read More",
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor,
              )),
        )
      ],
    );
  }
}
