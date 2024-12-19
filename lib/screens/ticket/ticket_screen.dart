import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import '/core/res/styles/app_styles.dart';
import '/core/widgets/app_coulmn_text_layour.dart';
import '/core/widgets/app_layoutbuilder.dart';
import '/core/widgets/ticket_view.dart';

import '../../core/res/styles/media.dart';
import '../../core/utils/all_json.dart';
import '../search/widgets/app_ticket_tab.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args['index'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text('Ticket'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          // const SizedBox(height: 40),
          // Text("Tickets", style: AppStyles.heandLineStyle1),
          const SizedBox(height: 20),
          const AppTicketTabs(
            textLeft: "Upcoming",
            textRight: "Previous",
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketsView(
              ticket: ticketList[ticketIndex],
              isColor: true,
            ),
          ),
          const SizedBox(height: 1),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketWhite,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppCoulmnTextLayout(
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      align: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    AppCoulmnTextLayout(
                      topText: "5521 3648",
                      bottomText: "Passport",
                      align: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutbuilderWidget(
                    randomDivider: 15, width: 5, isColor: true),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppCoulmnTextLayout(
                      topText: "1254 458755",
                      bottomText: "Number of E-ticket",
                      align: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    SizedBox(height: 1),
                    AppCoulmnTextLayout(
                      topText: "B2357",
                      bottomText: "Booking Code",
                      align: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutbuilderWidget(
                    randomDivider: 15, width: 5, isColor: true),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppMedia.visa,
                              scale: 11,
                            ),
                            Text(
                              "**** 4596",
                              style: AppStyles.heandLineStyle2,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Payment Method",
                          style: AppStyles.heandLineStyle2
                              .copyWith(color: AppStyles.litleTextColor),
                        ),
                      ],
                    ),
                    const AppCoulmnTextLayout(
                      topText: "\$249.99",
                      bottomText: "Price",
                      align: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: AppStyles.ticketWhite,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(15),
                child: BarcodeWidget(
                  height: 70,
                  width: double.infinity,
                  barcode: Barcode.code128(),
                  data: "1234567890",
                  drawText: false,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketsView(
              ticket: ticketList[ticketIndex],
            ),
          ),
        ],
      ),
    );
  }
}
