import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/seat_selection/presentation/widgets/price_footer.dart';
import 'package:round_8_mobile_safarni_team4/features/seat_selection/presentation/widgets/seat_grid.dart';
import 'package:round_8_mobile_safarni_team4/features/seat_selection/presentation/widgets/seat_legend.dart';

class SeatSelectionView extends StatefulWidget {
  const SeatSelectionView({super.key});

  @override
  State<SeatSelectionView> createState() => _SeatSelectionViewState();
}

class _SeatSelectionViewState extends State<SeatSelectionView> {
  final double ticketPrice = 150.00;
  List<int> selectedSeats = [6];

  double get totalPrice => selectedSeats.length * ticketPrice;

  void toggleSeat(int seatNumber) {
    setState(() {
      selectedSeats.clear();
      selectedSeats.add(seatNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('choose Seats'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SeatLegend(),
                SeatGrid(
                  selectedSeats: selectedSeats,
                  onSeatSelected: toggleSeat,
                ),
              ],
            ),
          ),
          Expanded(
            child: PriceFooter(
              ticketPrice: ticketPrice,
              totalPrice: totalPrice,
              selectedSeats: selectedSeats,
              onContinue: () {},
            ),
          ),
        ],
      ),
    );
  }
}
