import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../../../core/res/styles/app_styles.dart';
import '../../../core/res/styles/media.dart';
import '../../../core/widgets/heading_text.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //shows the logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AppMedia.logo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //sows the coulmn text
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadlingText(
                    text: "Book Ticket",
                    isColor: false,
                  ),
                  Text(
                    "New York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppStyles.profileLocationColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Premium Statuse",
                        style: TextStyle(
                          color: AppStyles.profileTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(
                    color: AppStyles.primaryColor, fontWeight: FontWeight.w300),
              ),
            ],
          );
  }
}