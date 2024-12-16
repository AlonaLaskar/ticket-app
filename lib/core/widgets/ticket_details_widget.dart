import 'package:flutter/material.dart';
import '/core/widgets/app_coulmn_text_layour.dart';


class TicketDetailsWidget extends StatelessWidget {
  final String date;
  final String dateLabel;
  final String departureTime;
  final String departureTimeLabel;
  final String ticketNumber;
  final String ticketNumberLabel;
  final Color backgroundColor;

  const TicketDetailsWidget({
    super.key,
    required this.date,
    required this.dateLabel,
    required this.departureTime,
    required this.departureTimeLabel,
    required this.ticketNumber,
    required this.ticketNumberLabel,
    required this.backgroundColor,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(21),
          bottomRight: Radius.circular(21),
        ),
        color: backgroundColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppCoulmnTextLayout(
                TopText: date,
                BottomText: dateLabel,
                align: CrossAxisAlignment.start,
              ),
              AppCoulmnTextLayout(
                TopText: departureTime,
                BottomText: departureTimeLabel,
                align: CrossAxisAlignment.center,
              ),
              AppCoulmnTextLayout(
                TopText: ticketNumber,
                BottomText: ticketNumberLabel,
                align: CrossAxisAlignment.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

