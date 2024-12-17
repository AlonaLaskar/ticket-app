import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketPink = const Color.fromARGB(255, 202, 170, 196);
  static Color ticketPerpule = const Color.fromARGB(255, 177, 162, 238);
  static Color ticketWhite = const Color(0xFFFFFFFF);
  static Color kakiColor = const Color.fromARGB(255, 100, 36, 74);
  static Color circleColor = const Color(0xFF189999);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color findTicketColor = const Color(0xD91130CE);
  static Color tickets = const Color(0xFF1130CE);
  static Color planAndIcon = const Color(0xFF8ACCF7);
  static Color litleTextColor =const Color.fromARGB(255, 163, 159, 159);

  


  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle heandLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle heandLineStyle2 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  static TextStyle heandLineStyle3 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle heandLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade500,
  );
}
