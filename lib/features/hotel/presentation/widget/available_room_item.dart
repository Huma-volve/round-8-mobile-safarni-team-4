import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/room_detailes.dart';

class AvailableRoomItem extends StatelessWidget {
  const AvailableRoomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoomDetailesView(
              
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Container(
          padding: const EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset('assets/images/room.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 8.0),
              Text('Room_1', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 4.0),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'From ',
                      style: AppThemes.light.textTheme.titleLarge!.copyWith(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    TextSpan(
                      text: '\$120',
                      style: AppThemes.light.textTheme.titleLarge!.copyWith(
                        fontSize: 12,
                        color: Color(0xff1C64F2),
                      ),
                    ),
                    TextSpan(
                      text: ' per Night',
                      style: AppThemes.light.textTheme.titleLarge!.copyWith(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
