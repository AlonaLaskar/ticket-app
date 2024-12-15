import 'package:flutter/material.dart';
import '/core/widgets/big_dot.dart';
import '/core/res/styles/app_styles.dart';
import '/core/widgets/app_layoutbuilder.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //get the size of the screen
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
          color: AppStyles.ticketPerpule,
        ),
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NYC",
                  style:
                      AppStyles.heandLineStyle2.copyWith(color: Colors.white),
                ),
                Expanded(
                  child: Container(),
                ),
                const BigDot(),
                Expanded(
                  child: Stack(
                    children: [
                      const SizedBox(
                        height: 24,
                        child: AppLayoutbuilderWidget(randomDivider: 6),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: const Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const BigDot(),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "LDN",
                  style:
                      AppStyles.heandLineStyle2.copyWith(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
