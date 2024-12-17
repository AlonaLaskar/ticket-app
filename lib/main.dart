import 'package:flutter/material.dart';
import 'core/res/bottom_nav_bar.dart';
import 'screens/home/widgets/all_hotels.dart';
import 'screens/home/widgets/all_tickets.dart';

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
        '/': (context) => const BottonNavBar(),
        '/all_tickets': (context) => const AllTickets(),
        '/all_hotels': (context) => const AllHotels(),
      },
    );
  }
}
