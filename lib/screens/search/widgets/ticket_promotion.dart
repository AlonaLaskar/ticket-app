import 'package:flutter/material.dart';
import '/core/res/styles/media.dart';
import 'promotion_card.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PromotionCard(
          width: size.width * 0.42,
          height: 435,
          image: AppMedia.planSit,
          text: "20% discount on the first flight booking, Don't miss out!",
        ),
        Column(
          children: [
            PromotionCard(
              width: size.width * 0.44,
              height: 210,
              title: "Discount\nfor Survey",
              text: "Take the survey about our service and get 20% discount.",
              backgroundColor: const Color(0xFF3AB8B8),
              hasCircularOverlay: true,
            ),
            const SizedBox(height: 15),
            PromotionCard(
              width: size.width * 0.44,
              height: 210,
              text: "Take Love",
              backgroundColor: const Color(0xFFEC6545),
            ),
          ],
        ),
      ],
    );
  }
}
