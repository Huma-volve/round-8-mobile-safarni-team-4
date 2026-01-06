import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildInfoItem(Icons.bed, "3 Beds"),
              _buildInfoItem(Icons.bathtub, "2 Bath"),
              _buildInfoItem(Icons.crop_free, "1,848 Sqrt"),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Description",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard du ...",
            style: TextStyle(fontSize: 14, color: Colors.black),
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
