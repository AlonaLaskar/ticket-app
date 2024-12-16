import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/screens/all_ticket.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {required this.bigText, required this.smallText, super.key});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.heandLineStyle3,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllTickets(),
              ),
            );
          },
          child: Text(smallText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
        ),
      ],
    );
  }
}
