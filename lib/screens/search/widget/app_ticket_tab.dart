import 'package:flutter/material.dart';
import '/screens/search/widget/app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: const Row(
        children: [
          AppTabs(text: "Airline Tickets"),
          AppTabs(text: "Hotels", tabBorder: true),
        ],
      ),
    );
  }
}
