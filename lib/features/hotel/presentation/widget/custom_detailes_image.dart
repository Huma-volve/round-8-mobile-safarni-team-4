import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_available_rooms/rooms_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_arraw_back.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/list_view_image_item.dart';

class CustomDetailesImage extends StatelessWidget {
  const CustomDetailesImage({super.key , required this.room});
  final RoomItemModel room;
  @override
  Widget build(BuildContext context) {
   
    return Stack(
      children: [
        Column(
          children: [
            
           
              CachedNetworkImage(
              imageUrl: room.images.isNotEmpty
                  ? room.images[0]
                  : 'assets/images/room_detailes.jpg', // fallback لو مفيش صور
              fit: BoxFit.cover,
              width: double.infinity,
              height: 350,
            ),  // constraints: BoxConstraints(minWidth: 20, minHeight: 20),
          ],
        ),
        const Positioned(top: 64, left: 16, child: CustomArrawBack()),
        const Positioned(
          top: 220,
          left: 16,
          right: 16,
          child: SizedBox(height: 100, child: ListViewImageItem()),
        ),
      ],
    );
  }
}
