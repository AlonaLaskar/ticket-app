import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, required this.text, this.tabBorder = false});
  final String text;
  final bool tabBorder;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: tabBorder ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left:  Radius.circular(50))
              : const BorderRadius.horizontal(right:  Radius.circular(50))),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
