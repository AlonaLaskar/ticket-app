import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/res/styles/app_styles.dart';

class AwardWidget extends StatelessWidget {
  const AwardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.ticketPink,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 27,
                        color: AppStyles.ticketPink,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "You have a new award",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "You habe to 95 fligthts in a year",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: -29,
                right: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 18,
                        color: const Color.fromARGB(255, 232, 196, 208)),
                  ),
                ),
              ),
            ],
          );
  }
}