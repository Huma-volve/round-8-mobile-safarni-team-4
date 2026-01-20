import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/rooms_data.dart';

class AboutSection extends StatelessWidget {
  AboutSection({super.key, });
  //final RoomsData roomsData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildInfoItem(Icons.bed, " Beds"), //${roomsData.bedNumber}
              _buildInfoItem(Icons.bathtub, " Bath"), //${roomsData.occupancy}
              _buildInfoItem(Icons.crop_free, " Sqrt"), //${roomsData.area}
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Description",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "roomsData.description",
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Read More",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue, size: 20),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
