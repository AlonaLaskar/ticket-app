import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/hotel_detail.dart';
import 'package:ticket_app/screens/profile/profile.dart';
import 'core/res/bottom_nav_bar.dart';
import 'core/utils/app_routes.dart';
import 'screens/home/widgets/all_hotels.dart';
import 'screens/home/widgets/all_tickets.dart';
import 'screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (context) => const BottonNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
        AppRoutes.profileScreen: (context) => const ProfileScreen(),
      },
    );
  }
}
