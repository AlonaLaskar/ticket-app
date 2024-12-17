import 'package:flutter/material.dart';
import '/core/widgets/ticket_details_widget.dart';
import 'ticket_widget.dart';
import '/core/res/styles/app_styles.dart';
import '/core/widgets/app_layoutbuilder.dart';
import '/core/widgets/big_circle.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  const TicketsView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //get the size of the screen
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            TicketWidget(
              departureCode: ticket["from"]["code"],
              destinationCode: ticket["to"]["code"],
              departureCity: ticket["from"]["name"],
              destinationCity: ticket["to"]["name"],
              duration: ticket["duration"],
              isColor: isColor,
              backgroundColor: isColor == null
                  ? AppStyles.ticketPerpule
                  : AppStyles.ticketWhite,
            ),
            // circle and dots
            Container(
              color: isColor == null
                  ? AppStyles.ticketPink
                  : AppStyles.ticketWhite,
              child: Row(
                children: [
                  BigCircle(isRigth: false, isColor: isColor),
                  Expanded(
                    child: AppLayoutbuilderWidget(
                        randomDivider: 20, width: 6, isColor: isColor),
                  ),
                  BigCircle(isRigth: true, isColor: isColor),
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
              isColor: isColor,
              backgroundColor: isColor == null
                  ? AppStyles.ticketPink
                  : AppStyles.ticketWhite,
            ),
          ],
        ),
      ),
    );
  }
}
