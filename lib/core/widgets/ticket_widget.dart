import 'package:flutter/material.dart ';
import '/core/widgets/text_style_big_title.dart';
import '/core/widgets/text_style_small_title.dart';
import '/core/widgets/big_dot.dart';
import '/core/res/styles/app_styles.dart';
import '/core/widgets/app_layoutbuilder.dart';

class TicketWidget extends StatelessWidget {
  final String departureCode;
  final String destinationCode;
  final String departureCity;
  final String destinationCity;
  final String duration;
  final Color backgroundColor;
  final bool? isColor;

  const TicketWidget({
    super.key,
    required this.departureCode,
    required this.destinationCode,
    required this.departureCity,
    required this.destinationCity,
    required this.duration,
    required this.backgroundColor,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Purple part of the ticke
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(21),
          topRight: Radius.circular(21),
        ),
        color: backgroundColor,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Show departure and destination with icons first line
          Row(
            children: [
              TextStyleeBigTitle(
                text: departureCode,
                isColor: isColor,
              ),
              Expanded(
                child: Container(),
              ),
              BigDot(isColor: isColor),
              Expanded(
                child: Stack(
                  children: [
                    const SizedBox(
                      height: 24,
                      child: AppLayoutbuilderWidget(randomDivider: 6),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.57,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: isColor == null
                              ? Colors.white
                              : AppStyles.planAndIcon,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BigDot(isColor: isColor),
              Expanded(
                child: Container(),
              ),
              TextStyleeBigTitle(
                text: destinationCode,
                isColor: isColor,
              ),
            ],
          ),
          // Show departure and destination name with time
          const SizedBox(height: 3),
          Row(
            children: [
              SizedBox(
                width: 100,
                child: TextStyleSmallTitle(
                  text: departureCity,
                  isColor: isColor,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              TextStyleSmallTitle(
                text: duration,
                isColor: isColor,
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: 100,
                child: TextStyleSmallTitle(
                  text: destinationCity,
                  align: TextAlign.right,
                  isColor: isColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
