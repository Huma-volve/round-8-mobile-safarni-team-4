import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/seat_selection/presentation/widgets/seat_item.dart';

class SeatGrid extends StatelessWidget {
  final List<int> selectedSeats;
  final Function(int) onSeatSelected;

  const SeatGrid({
    super.key,
    required this.selectedSeats,
    required this.onSeatSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.w(24)),
      child: Column(
        children: List.generate(6, (rowIndex) {
          return Padding(
            padding: EdgeInsets.only(bottom: context.h(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(2, (colIndex) {
                  int seatNum = rowIndex * 5 + colIndex + 1;
                  return _buildSeat(seatNum);
                }),

                SizedBox(width: context.w(20)), // Gap
                ...List.generate(3, (colIndex) {
                  int seatNum = rowIndex * 5 + 2 + colIndex + 1;
                  return _buildSeat(seatNum);
                }),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _buildSeat(int seatNum) {
    final unavailableSeats = [
      1,
      2,
      3,
      5,
      7,
      11,
      12,
      13,
      14,
      15,
      18,
      19,
      21,
      22,
      23,
      25,
      27,
      30,
    ];

    SeatState state;
    if (selectedSeats.contains(seatNum)) {
      state = SeatState.selected;
    } else if (unavailableSeats.contains(seatNum)) {
      state = SeatState.unavailable;
    } else {
      state = SeatState.available;
    }

    return SeatItem(
      seatNumber: seatNum,
      state: state,
      onTap: () => onSeatSelected(seatNum),
    );
  }
}
