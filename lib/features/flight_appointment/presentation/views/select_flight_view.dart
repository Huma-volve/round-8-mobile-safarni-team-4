import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/features/flight_appointment/presentation/widgets/flight_booking_header.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/date_selector_strip.dart';
import '../widgets/flight_card.dart';

class SelectFlightView extends StatelessWidget {
  const SelectFlightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 4,
        children: [
          Expanded(
            flex: 3,
            child: const FlightBookingHeader(title: 'Select Your Flight'),
          ),
          Expanded(child: const DateSelectorStrip()),
          Expanded(flex: 8, child: TicketsList()),
        ],
      ),
      bottomSheet: Container(
        color: AppColors.scaffoldBg,
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.seatSelection);
            },
            child: Text(
              "Continue",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TicketsList extends StatefulWidget {
  const TicketsList({super.key});

  @override
  State<TicketsList> createState() => _TicketsListState();
}

class _TicketsListState extends State<TicketsList> {
  List<FlightCard> cards = [
    const FlightCard(
      pickupTime: "7:05 AM",
      pickupAirport: "YUL",
      arrivalTime: "8:05 PM",
      arrivalAirport: "YUL",
      airline: "Air Canada",
      price: "\$ 1,400",
      duration: "13:00",
    ),
    const FlightCard(
      pickupTime: "9:05 AM",
      pickupAirport: "YUL",
      arrivalTime: "4:55 PM",
      arrivalAirport: "YUL",
      airline: "Scoot",
      price: "\$ 1,300",
      duration: "18:55",
      layover: "1 layover: YYZ (3:55)",
    ),
    const FlightCard(
      pickupTime: "9:05 AM",
      pickupAirport: "YUL",
      arrivalTime: "4:55 PM",
      arrivalAirport: "YUL",
      airline: "Scoot",
      price: "\$ 1,300",
      duration: "18:55",
      layover: "1 layover: YYZ (3:55)",
    ),
    const FlightCard(
      pickupTime: "10:00 AM",
      pickupAirport: "YUL",
      arrivalTime: "11:00 PM",
      arrivalAirport: "YUL",
      airline: "Air Canada",
      price: "\$ 1,400",
      duration: "13:00",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: MediaQuery.of(context).size.height * 0.11,
      ),
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 8),
        itemBuilder: (context, index) => cards[index],
        separatorBuilder: (context, index) => SizedBox(height: 8),
        itemCount: cards.length,
      ),
    );
  }
}
