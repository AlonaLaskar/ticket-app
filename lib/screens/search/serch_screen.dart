import 'package:flutter/material.dart';
import '/core/res/styles/app_styles.dart';
import '/core/utils/app_routes.dart';
import '/core/widgets/app_double_text.dart';
import 'widget/app_text_icon.dart';
import 'widget/app_ticket_tab.dart';
import 'widget/find_ticket.dart';
import 'widget/ticket_promotion.dart';

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
          const SizedBox(height: 20),
          const AppTicketTabs(),
          const SizedBox(height: 25),
          const AppTextIcon(
              text: "Depature", icon: Icons.flight_takeoff_rounded),
          const SizedBox(height: 20),
          const AppTextIcon(text: "Arrival", icon: Icons.flight_land_rounded),
          const SizedBox(height: 25),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
            bigText: "Upcoming Flyts",
            smallText: "View All",
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(height: 15),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
