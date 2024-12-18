import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';

import '../../../core/utils/app_routes.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Hotels'),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 8),
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              return HotelGridView(hotel: hotelList[index],index:index);
            },
          ),
        ));
  }
}

class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel,required this.index});
  final Map<String, dynamic> hotel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments:{'index':index});
      },
      child: Container(
        height: 350,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: AppStyles.ticketPink,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HotelImage(imagePath: hotel["image"]),
            Center(
              child: Text(
                hotel["place"],
                style: AppStyles.heandLineStyle2
                    .copyWith(color: AppStyles.kakiColor),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel["deriction"],
                  style:
                      AppStyles.heandLineStyle4.copyWith(color: Colors.white),
                ),
                Text(
                  "\$${hotel["price"]} Per Night",
                  style: AppStyles.heandLineStyle4
                      .copyWith(color: AppStyles.kakiColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _HotelImage extends StatelessWidget {
  const _HotelImage({required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage('assets/images/$imagePath'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
