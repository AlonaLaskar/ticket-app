import 'package:flutter/material.dart';
import '/core/utils/all_json.dart';
import '/core/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Tickets'),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => Container(
                      padding: const EdgeInsets.all(16),
                      child: TicketsView(ticket: singleTicket)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
