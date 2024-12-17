import 'package:flutter/material.dart';
import '/core/res/styles/app_styles.dart';

class PromotionCard extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final String? title;
  final String? image;
  final Color backgroundColor;
  final bool hasCircularOverlay;

  const PromotionCard({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    this.title,
    this.image,
    this.backgroundColor = Colors.white,
    this.hasCircularOverlay = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: backgroundColor == Colors.white
                ? [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2,
                    ),
                  ]
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (image != null)
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(image!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              if (title != null) ...[
                Text(
                  title!,
                  style: AppStyles.heandLineStyle3.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
              Text(
                text,
                style: AppStyles.heandLineStyle3.copyWith(
                  color: backgroundColor == Colors.white
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        if (hasCircularOverlay)
          Positioned(
            right: -45,
            top: -40,
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 18,
                  color: AppStyles.circleColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
