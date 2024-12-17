import 'package:flutter/material.dart';
import 'app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key, required this.textLeft, required this.textRight});
  final String textLeft;
  final String textRight;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child:  Row(
        children: [
          AppTabs(text: textLeft),
          AppTabs(text: textRight, tabBorder: true),
        ],
      ),
    );
  }
}
