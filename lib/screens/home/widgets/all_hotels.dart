import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/all_json.dart';

import 'hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Hotels'),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .map((singleHotel) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Hotel(
                        hotel: singleHotel,
                        wholeScreen: true,
                      )))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
