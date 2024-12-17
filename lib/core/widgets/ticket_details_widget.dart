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
  final bool? isColor;

  const TicketDetailsWidget({
    super.key,
    required this.date,
    required this.dateLabel,
    required this.departureTime,
    required this.departureTimeLabel,
    required this.ticketNumber,
    required this.ticketNumberLabel,
    required this.backgroundColor,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: isColor == null
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              )
            : BorderRadius.zero,
        color: backgroundColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppCoulmnTextLayout(
                topText: date,
                bottomText: dateLabel,
                isColor: isColor,
                align: CrossAxisAlignment.start,
              ),
              AppCoulmnTextLayout(
                topText: departureTime,
                bottomText: departureTimeLabel,
                isColor: isColor,
                align: CrossAxisAlignment.center,
              ),
              AppCoulmnTextLayout(
                topText: ticketNumber,
                bottomText: ticketNumberLabel,
                isColor: isColor,
                align: CrossAxisAlignment.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
