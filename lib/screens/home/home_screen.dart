import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import '../../core/widgets/heading_text.dart';
import '/core/res/styles/media.dart';
import 'widgets/hotel.dart';
import '/core/res/styles/app_styles.dart';
import '/core/widgets/app_double_text.dart';
import '/core/widgets/ticket_view.dart';
import '/core/utils/all_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.heandLineStyle2,
                        ),
                        const SizedBox(height: 5),
                        const HeadlingText(
                            text: 'Book Tickets', isColor: false),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(66, 230, 200, 226),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color.fromARGB(255, 104, 109, 71),
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: "Upcoming Flyts",
                  smallText: "View All",
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .map((singleTicket) => GestureDetector(
                              onTap: () {
                                var index = ticketList.indexOf(singleTicket);
                                Navigator.pushNamed(
                                    context, AppRoutes.ticketScreen,
                                    arguments: {'index': index});
                              },
                              child: TicketsView(ticket: singleTicket)))
                          .toList(),
                    )),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View All",
                  func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map((singleHotel) => GestureDetector(
                            onTap: () {
                              var index = hotelList.indexOf(singleHotel);
                              Navigator.pushNamed(
                                  context, AppRoutes.hotelDetail,
                                  arguments: {'index': index});
                            },
                            child: Hotel(hotel: singleHotel)))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
