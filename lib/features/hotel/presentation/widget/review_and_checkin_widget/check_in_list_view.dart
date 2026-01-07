import 'package:flutter/material.dart';

/// =======================
/// MODEL
/// =======================
class DateModel {
  final String day;
  final String date;
  final bool isSelected;

  DateModel({
    required this.day,
    required this.date,
    this.isSelected = false,
  });

  DateModel copyWith({bool? isSelected}) {
    return DateModel(
      day: day,
      date: date,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}

/// =======================
/// SCREEN
/// =======================
class CheckInOutScreen extends StatefulWidget {
  const CheckInOutScreen({super.key});

  @override
  State<CheckInOutScreen> createState() => _CheckInOutScreenState();
}

class _CheckInOutScreenState extends State<CheckInOutScreen> {
  List<DateModel> checkInDates = [
    DateModel(day: 'Today', date: '4 Oct', isSelected: true),
    DateModel(day: 'Tue', date: '6 Oct'),
    DateModel(day: 'Wed', date: '7 Oct'),
  ];

  List<DateModel> checkOutDates = [
    DateModel(day: 'Sun', date: '3 Nov', isSelected: true),
    DateModel(day: 'Mon', date: '4 Nov'),
    DateModel(day: 'Wed', date: '5 Nov'),
  ];

  void selectDate({
    required bool isCheckIn,
    required int index,
  }) {
    setState(() {
      final list = isCheckIn ? checkInDates : checkOutDates;

      final updatedList = list
          .asMap()
          .map(
            (i, item) => MapEntry(
              i,
              item.copyWith(isSelected: i == index),
            ),
          )
          .values
          .toList();

      if (isCheckIn) {
        checkInDates = updatedList;
      } else {
        checkOutDates = updatedList;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Book Hotel',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text('Check In', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            DateRow(
              dates: checkInDates,
              onTap: (index) =>
                  selectDate(isCheckIn: true, index: index),
            ),

            const SizedBox(height: 24),

            const Text('Check Out', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            DateRow(
              dates: checkOutDates,
              onTap: (index) =>
                  selectDate(isCheckIn: false, index: index),
            ),
          ],
        ),
      
    );
  }
}

/// =======================
/// DATE ROW
/// =======================
class DateRow extends StatelessWidget {
  final List<DateModel> dates;
  final Function(int) onTap;

  const DateRow({
    super.key,
    required this.dates,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: dates
            .asMap()
            .entries
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                  onTap: () => onTap(e.key),
                  child: DateCard(model: e.value),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

/// =======================
/// DATE CARD
/// =======================
class DateCard extends StatelessWidget {
  final DateModel model;

  const DateCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: model.isSelected ? Colors.indigo : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(
            model.day,
            style: TextStyle(
              color: model.isSelected ? Colors.white : Colors.grey,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            model.date,
            style: TextStyle(
              color: model.isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
