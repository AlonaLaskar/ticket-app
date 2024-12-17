import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';

import 'widget/app_ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            'What are \nyou looking for?',
            style: AppStyles.heandLineStyle1
                .copyWith(color: Colors.black, fontSize: 30),
          ),
          const AppTicketTabs(),
        ],
      ),
    );
  }
}
