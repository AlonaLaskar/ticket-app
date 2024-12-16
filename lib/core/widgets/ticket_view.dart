import 'package:flutter/material.dart';
import '/core/widgets/ticket_details_widget.dart';
import 'ticket_widget.dart';
import '/core/res/styles/app_styles.dart';
import '/core/widgets/app_layoutbuilder.dart';
import '/core/widgets/big_circle.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketsView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //get the size of the screen
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            TicketWidget(
              departureCode: ticket["from"]["code"],
              destinationCode: ticket["to"]["code"],
              departureCity: ticket["from"]["name"],
              destinationCity: ticket["to"]["name"],
              duration: ticket["duration"],
            ),
            // circle and dots
            Container(
              color: AppStyles.ticketPink,
              child: const Row(
                children: [
                  BigCircle(isRigth: false),
                  Expanded(
                    child: AppLayoutbuilderWidget(randomDivider: 20, width: 6),
                  ),
                  BigCircle(isRigth: true),
                ],
              ),
            ),
            TicketDetailsWidget(
              date: ticket["date"],
              dateLabel: "Date",
              departureTime: ticket["departureTime"],
              departureTimeLabel: "Departure Time",
              ticketNumber: ticket["number"],
              ticketNumberLabel: "Number",
              backgroundColor: AppStyles.ticketPink,
            ),
          ],
        ),
      ),
    );
  }
}
