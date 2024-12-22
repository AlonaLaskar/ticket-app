import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import '../../controller/bottom_nav_controllor.dart';
import '../../screens/profile/profile.dart';
import '/screens/home/home_screen.dart';
import '/screens/search/serch_screen.dart';
import '/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';

class BottonNavBar extends StatelessWidget {
  BottonNavBar({super.key});

//depandancy injection
  final BottomNavControllor controller = Get.put(BottomNavControllor());

  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          body: appScreens[controller.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
            selectedItemColor: const Color.fromARGB(255, 223, 153, 195),
            unselectedItemColor: const Color.fromARGB(255, 202, 196, 202),
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: 'Ticket'),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon:
                      Icon(FluentSystemIcons.ic_fluent_person_add_filled),
                  label: 'Profile'),
            ],
          ),
        );
      },
    );
  }
}
