import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/rooms_data.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/check_in&out.dart';

class BottomPriceBar extends StatelessWidget {
  const BottomPriceBar({super.key, required this.pricePerNight});
  final double pricePerNight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          // ignore: deprecated_member_use
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
           Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const   Text("Total price"),
              const SizedBox(height: 8),
              Text(
                "\$$pricePerNight ",
                style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1E429F),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          const Expanded(child: SizedBox()),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff1E429F),
              fixedSize: const Size(170, 50),
              //foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckInAndOutScreen(),
                ),
              );
            },
            child: const Text(
              "Book Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
