import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'widgets/page_header.dart';
import 'widgets/award_widget.dart';
import 'widgets/text_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          const PageHeader(),
          const SizedBox(height: 20),
          //devider
          Divider(
            color: Colors.grey.shade300,
          ),
          //show the award widget
          const AwardWidget(),
          const SizedBox(height: 25),
          Text("Accumulated miles", style: AppStyles.heandLineStyle3),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: AppStyles.bgColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text(
                  '195264',
                  style: TextStyle(
                    fontSize: 45,
                    color: AppStyles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mils accuracy",
                      style: AppStyles.heandLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "16th july",
                      style: AppStyles.heandLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                //devider
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4),
                const TextRow(
                  numMails: "23 042",
                  receivedFrom: "Airline CO",
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),

                const TextRow(
                  numMails: "24",
                  receivedFrom: "McDonalds",
                ),

                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),

                const TextRow(
                  numMails: "52 340",
                  receivedFrom: "DBetech",
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {
                  },
                  child: Text('How to  get more miles',
                      style: AppStyles.textStyle.copyWith(
                        color: AppStyles.primaryColor,
                        fontWeight: FontWeight.w500,
                      )),
                ),

                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       children: [
                //         TextStyleeBigTitle(text: "23 042", isColor: true),
                //         TextStyleSmallTitle(text: "Mails", isColor: true),
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         TextStyleeBigTitle(text: "Airline CO", isColor: true),
                //         TextStyleSmallTitle(
                //             text: "Received from", isColor: true),
                //       ],
                //     )
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
