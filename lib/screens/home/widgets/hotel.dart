import 'package:flutter/material.dart';
import '../../../core/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel, this.wholeScreen = false});
  final Map<String, dynamic> hotel;
  final bool wholeScreen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(8.0),
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.ticketPink,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HotelImage(imagePath: hotel["image"]),
          const SizedBox(height: 10),
          _HotelText(
            text: hotel["place"],
            style: AppStyles.heandLineStyle3.copyWith(color: AppStyles.kakiColor),
          ),
          const SizedBox(height: 5),
          _HotelText(
            text: hotel["deriction"],
            style: AppStyles.heandLineStyle2.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 5),
          _HotelText(
            text: '\$${hotel["price"]} Per Night',
            style: AppStyles.heandLineStyle3.copyWith(color: AppStyles.kakiColor),
          ),
        ],
      ),
    );
  }
}

class _HotelImage extends StatelessWidget {
  const _HotelImage({required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage('assets/images/$imagePath'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _HotelText extends StatelessWidget {
  const _HotelText({required this.text, required this.style});
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
